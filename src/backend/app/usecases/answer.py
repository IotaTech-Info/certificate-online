# Copyright © 2022 EL-PRO
from sqlalchemy.exc import SQLAlchemyError
from ..gateways.extensions import sql_db

from ..controllers.dto import Result
from ..controllers.dto.answer import GetAnswerDetailRes, AnswerDetail, PostAnswerDetailSchema
from ..entities.exam_event import Exam_EventMapper
from ..entities.user_test_answer import User_Test_AnswerMapper
from ..entities.exam import ExamMapper
from ..entities.userinfo import UserinfoMapper
from ..entities.option import OptionMapper, Option
from ..across.exception import ELPROInvalidRequestException, ELPROInternalServerException, ELPRONotFoundException
from backend.app.controllers.dto import answer

class AnswerService:

    def get(self, user_id: str, test_id: str):
        try:
          answer = Exam_EventMapper.query. \
                      filter(Exam_EventMapper.user_id == user_id). \
                      filter(Exam_EventMapper.test_id == test_id).first()

          if answer is None :
            raise ELPRONotFoundException('ANSWERGET400', 'No exam.')

          test = ExamMapper.query. \
                      filter(ExamMapper.test_id == answer.test_id).first()


          user_test_answer_list = User_Test_AnswerMapper.query. \
                    filter(User_Test_AnswerMapper.exam_event_id == answer.exam_event_id).all()

          return GetAnswerDetailRes(
            result=Result(code='ANSWERGET200', message="Success."),
            answerdetail=AnswerDetail(
              test_name = test.test_name,
              test_result = answer.test_result,
              answerlist = [a.to_dto() for a in user_test_answer_list]
            )
          )
        
        except SQLAlchemyError as e:
            raise ELPROInvalidRequestException('ANSWERGET500_000', 'database error: {}'.format(e))
        except Exception as e:
            raise ELPROInternalServerException(result_code='ANSWERGET500_999', result_msg='internal server error: {}'.format(e))


    def add(self, req: PostAnswerDetailSchema):
        try:
          #user和test的check
          user_check = UserinfoMapper.query.filter(UserinfoMapper.user_id == int(req.user_id)).first()
          test_check = ExamMapper.query.filter(ExamMapper.test_id == int(req.test_id)).first()
          
          if user_check or test_check is None :
            raise ELPRONotFoundException('ANSWERPOST404', 'USER OR TEST_EVENT Not Found.')

          #抽取选项的数据
          option_mapper_list = OptionMapper.query \
                      .filter(OptionMapper.test_id == int(req.test_id)) \
                      .order_by(OptionMapper.question_id, OptionMapper.option_id) \
                      .all()
          
          if option_mapper_list is None :
            raise ELPRONotFoundException('ANSWERPOST400', 'No answer.')
            
          #计算考试结果和user_test_answer table
          test_result = 0
          user_answers_count = 0
          for e in req.answerlist :
            user_answers_count += 1
            #正确答案字符串
            correct_answer = ""
            for o in option_mapper_list:
              if o.question_id == int(e.question_id) and o.right_or_wrong:
                answer =  str(o.option_id) #TODO修改API仕样书传过来的答案的形式eg：“123”去除，

                correct_answer = correct_answer + answer
            
            #对比用户答案和正确答案并写入数据库
            if correct_answer == e.user_answer_option:
              test_result += 1

              user_test_answer = User_Test_AnswerMapper()
              user_test_answer.question_id = e.question_id
              user_test_answer.user_answer_option = e.user_answer_option
              user_test_answer.user_answer_right_or_wrong = True

              sql_db.session.add(user_test_answer)
            else:
              user_test_answer = User_Test_AnswerMapper()
              user_test_answer.question_id = e.question_id
              user_test_answer.user_answer_option = e.user_answer_option
              user_test_answer.user_answer_right_or_wrong = False

              sql_db.session.add(user_test_answer)
 
          #检查传过来的答案数量
          if user_answers_count < len(option_mapper_list):
            raise ELPRONotFoundException('ANSWERPOST400', 'Wrong number of answers.') #TODO需要修改API仕样书,增加400

          # test_event table
          test_event = Exam_EventMapper()
          test_event.user_id = req.user_id
          test_event.test_id = req.test_id
          test_event.test_result = test_result
          
          sql_db.session.add(test_event)

          
          sql_db.session.commit()
        except SQLAlchemyError as e:
            raise ELPROInvalidRequestException('ANSWERPOST500_000', 'database error: {}'.format(e))