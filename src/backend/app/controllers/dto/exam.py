# Copyright © 2022 EL-PRO

from typing import List
from marshmallow import fields
from . import Result, ResultSchema, BaseSchema


class Exam:
    def __init__(self, test_id: int, test_category: str, test_name: str, description: str) -> None:
        self.test_id = test_id
        self.test_category = test_category
        self.test_name = test_name
        self.description = description

class ExamSchema(BaseSchema):
    __model__ = Exam
    test_id = fields.Int(data_key='test_id')
    test_category = fields.Str(data_key='test_category')
    test_name = fields.Str(data_key='test_name')
    description = fields.Str(data_key='description')


class GetExamListRes:
    def __init__(self, result: Result, examlist: List[Exam] = []) -> None:
        self.result = result
        self.examlist = examlist


class GetExamListResSchema(BaseSchema):
    __model__ = GetExamListRes
    result = fields.Nested(ResultSchema, data_key='result')
    examlist = fields.Nested(ExamSchema, data_key='examlist', many=True)



#detail
class Option:
    def __init__(self, question_id: int,option_id: int, option_text: str, right_or_wrong: bool) -> None:
        self.question_id = question_id
        self.option_id = option_id
        self.option_text = option_text
        self.right_or_wrong = right_or_wrong

class OptionSchema(BaseSchema):
    __model__ = Option
    question_id = fields.Int(data_key='question_id')
    option_id = fields.Int(data_key='option_id')
    option_text = fields.Str(data_key='option_text')
    right_or_wrong = fields.Boolean(data_key='right_or_wrong') 


class Question:
    def __init__(self, question_id: int, question_text: str, code: str, 
        right_select_count: int) -> None:
        self.question_id = question_id
        self.question_text = question_text
        self.code = code
        self.right_select_count = right_select_count
       

class QuestionSchema(BaseSchema):
    __model__ = Question
    question_id = fields.Int(data_key='question_id')
    question_text = fields.Str(data_key='question_text')
    code = fields.Str(data_key='code')
    right_select_count = fields.Int(data_key='right_select_count')


class ExamDetail:
    def __init__(self, 
        test_name: str, 
        questionlist: List[Question] = [], 
        optionlist: List[Option] = []
        ) -> None:
        self.test_name = test_name
        self.questionlist = questionlist
        self.optionlist = optionlist
       

class ExamDetailSchema(BaseSchema):
    __model__ = ExamDetail
    test_name = fields.Str(data_key='test_name')
    questionlist = fields.Nested(QuestionSchema, data_key='questionlist', many=True)
    optionlist = fields.Nested(OptionSchema, data_key='optionlist', many=True)

class GetExamDetailRes:
    def __init__(self, result: Result, examdetail: ExamDetail) -> None:
        self.result = result
        self.examdetail = examdetail

class GetExamDetailResSchema(BaseSchema):
    __model__ = GetExamDetailRes
    result = fields.Nested(ResultSchema, data_key='result')
    examdetail = fields.Nested(ExamDetailSchema, data_key='examdetail')

