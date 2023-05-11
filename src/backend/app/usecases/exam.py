# Copyright © 2022 EL-PRO
from sqlalchemy.exc import SQLAlchemyError



from ..controllers.dto import Result
from ..controllers.dto.exam import GetExamDetailRes, GetExamListRes ,ExamDetail, Question ,Option 
from ..entities.exam import ExamMapper
from ..entities.question import QuestionMapper
from ..entities.option import OptionMapper
from ..across.exception import ELPROInvalidRequestException, ELPROInternalServerException ,ELPRONotFoundException

class ExamService:

    def get_list(self):
        try:
          examlist = ExamMapper.query.all()

          return GetExamListRes(
            result=Result(code='EXAMLISTGET200', message="Success."),
            examlist=[e.to_dto() for e in examlist]
          )

        except SQLAlchemyError as e:
            raise ELPROInvalidRequestException('EXAMLISTGET500_000', 'database error: {}'.format(e))
        except Exception as e:
            raise ELPROInternalServerException(result_code='EXAMLISTGET500_999', result_msg='internal server error: {}'.format(e))


    def get_detail(self, test_id: str):
        try:
          exam = ExamMapper.query. \
                      filter(ExamMapper.test_id == int(test_id)).first()

          if exam is None :
            raise ELPRONotFoundException('EXAMDETAILGET400', 'No exam.')

          question_mapper_list = QuestionMapper.query \
                      .filter(QuestionMapper.test_id==int(test_id)) \
                      .order_by(QuestionMapper.question_id) \
                      .all()
          
          if question_mapper_list is None :
            raise ELPRONotFoundException('EXAMDETAILGET400', 'No question.')


          question_list = []
          for question_mapper in question_mapper_list :

              question = Question(
                question_id = question_mapper.question_id,
                question_text = question_mapper.text,
                code = question_mapper.code,
                right_select_count = question_mapper.right_select_count
              )

              question_list.append(question)
            
          option_list = []
          option_mapper_list = []
          option_mapper_list = OptionMapper.query \
                    .filter(OptionMapper.test_id==exam.test_id) \
                    .order_by(OptionMapper.question_id, OptionMapper.option_id) \
                    .all()
              
          if option_mapper_list is None :
              raise ELPRONotFoundException('EXAMDETAILGET400', 'No option.')
              
          for o in option_mapper_list :
              option =  Option(
                        question_id = o.question_id,
                        option_id = o.option_id,
                        option_text = o.text,
                        right_or_wrong = o.right_or_wrong
                      )

              option_list.append(option)


          return GetExamDetailRes(
            result = Result(code='EXAMDETAILGET200', message="Success."),
            examdetail = ExamDetail(
              test_name = exam.test_name,
              questionlist = question_list,
              optionlist = option_list
            )
          )

        except SQLAlchemyError as e:
            raise ELPROInvalidRequestException('EXAMDETAILGET500_000', 'database error: {}'.format(e))
        except Exception as e:
            raise ELPROInternalServerException(result_code='EXAMDETAILGET500_999', result_msg='internal server error: {}'.format(e))

