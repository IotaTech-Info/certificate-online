# Copyright © 2023 COL-PRO
from sqlalchemy.exc import SQLAlchemyError
from ..gateways.extensions import sql_db

from ..controllers.dto import Result
from ..controllers.dto.login import PostLoginRes, LoginSchema, Userinfo, PutLoginSchema,PutLoginRes
from ..entities.login import LoginMapper
from ..entities.userinfo import UserinfoMapper
from ..across.exception import COLPROInvalidRequestException, COLPROInternalServerException, COLPRONotFoundException

class LoginService:

    def post(self, req: LoginSchema):
          login = LoginMapper.query. \
                      filter(LoginMapper.mail == req.mail). \
                      filter(LoginMapper.password == req.password).first()

          if login is None :
            raise COLPRONotFoundException('LOGINPOST400', 'User does not exist. Or the password is wrong.')

          login_userinfo = UserinfoMapper.query. \
                    filter(UserinfoMapper.user_id == login.user_id).first()

          return PostLoginRes(
            result=Result(code='LOGINPOST200', message="Success."),
            userinfo=Userinfo(user_id=login.user_id,
                              lastname=login_userinfo.lastname,
                              firstname=login_userinfo.firstname)
          )
        
        
    def put(self,req: PutLoginSchema):
        try:
          login = LoginMapper.query. \
                      filter(LoginMapper.user_id == req.user_id). \
                      filter(LoginMapper.password == req.oldpassword).first()

          if login is None :
            raise COLPRONotFoundException(result_code='LOGINPUT500_999', result_msg='internal server error: {}'.format(e))
      
          login.password = req.newpassword

          sql_db.session.add(login)
          sql_db.session.commit()

        except SQLAlchemyError as e:
            raise COLPROInvalidRequestException('LOGINPUT500_000', 'database error: {}'.format(e))
        except Exception as e:
            raise COLPROInternalServerException('LOGINPUT400', 'Password is wrong.')
