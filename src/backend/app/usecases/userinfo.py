# Copyright © 2022 EL-PRO
from sqlalchemy.exc import SQLAlchemyError
from ..gateways.extensions import sql_db

from ..controllers.dto import Result
from ..controllers.dto.userinfo import PostUserinfoSchema, GetUserinfoRes, GetUserinfo, PutUserinfoSchema
from ..entities.userinfo import UserinfoMapper
from ..entities.login import LoginMapper
from ..across.exception import ELPROInvalidRequestException, ELPROInternalServerException, ELPRONotFoundException

class UserinfoService:

    def add(self, req: PostUserinfoSchema):
        try:

          mail_check = LoginMapper.query.filter(LoginMapper.mail == req.mail).first()  
          
          if mail_check is not None :
            raise ELPRONotFoundException('USERINFOPOST400', 'User already exists.')

          # userinfo table
          userinfo = UserinfoMapper()
          userinfo.lastname = req.lastname
          userinfo.firstname = req.firstname
          userinfo.birthday = req.birthday
          userinfo.sex = req.sex
          userinfo.company = req.company
          userinfo.city = req.city
          
          sql_db.session.add(userinfo)

          # login table
          login = LoginMapper()
          login.mail = req.mail
          login.password = req.password

          sql_db.session.add(login)

          sql_db.session.commit()
        except SQLAlchemyError as e:
            raise ELPROInvalidRequestException('USERINFOPOST500_000', 'database error: {}'.format(e))

    def get(self, user_id: int):
        try:
          userinfo = UserinfoMapper.query. \
                      filter(UserinfoMapper.user_id == user_id).first()

          if userinfo is None :
            raise ELPRONotFoundException('USERINFOGET404', 'USER Not Found.')
          
          login = LoginMapper.query. \
                      filter(LoginMapper.user_id == user_id).first()
          if login is None :
                raise ELPRONotFoundException('USERINFOGET404', 'USER Not Found.')


          return GetUserinfoRes(
            result=Result(code='USERINFOGET200', message="Success."),
            userinfo=GetUserinfo(mail = login.mail,
                              lastname = userinfo.lastname,
                              firstname = userinfo.firstname,
                              birthday = userinfo.birthday,
                              sex = userinfo.sex,
                              company = userinfo.company if userinfo.company != None else '',
                              city = userinfo.city)
          )
        
        except SQLAlchemyError as e:
            raise ELPROInvalidRequestException('USERINFOGET500_000', 'database error: {}'.format(e))
        except Exception as e:
            raise ELPROInternalServerException(result_code='USERINFOGET500_999', result_msg='internal server error: {}'.format(e))


    def put(self, req: PutUserinfoSchema):
        try:
          userinfo = UserinfoMapper.query. \
                      filter(UserinfoMapper.user_id == req.user_id).first()

          if userinfo is None :
            raise ELPRONotFoundException('USERINFOPUT404', 'USER Not Found.')

          # userinfo table
          userinfo.lastname = req.lastname if req.lastname is not None else userinfo.lastname
          userinfo.firstname = req.firstname if req.firstname is not None else userinfo.firstname
          userinfo.sex = req.sex if req.sex is not None else userinfo.sex
          userinfo.company = req.company if req.company is not None else userinfo.company
          userinfo.city = req.city if req.city is not None else userinfo.city
          
          sql_db.session.add(userinfo)

          sql_db.session.commit()
        except SQLAlchemyError as e:
            raise ELPROInvalidRequestException('USERINFOPUT500_000', 'database error: {}'.format(e))
        except Exception as e:
            raise ELPROInternalServerException(result_code='USERINFOPUT500_999', result_msg='internal server error: {}'.format(e))