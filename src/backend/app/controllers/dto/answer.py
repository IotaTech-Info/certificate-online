# Copyright © 2022 EL-PRO
from typing import List
from marshmallow import fields
from . import Result, ResultSchema, BaseSchema


class Answer:
    def __init__(self, question_id: int, user_answer_option: str, 
        user_answer_right_or_wrong: bool, correct_answer: str) -> None:
        self.question_id = question_id
        self.user_answer_option = user_answer_option
        self.user_answer_right_or_wrong = user_answer_right_or_wrong
        self.correct_answer = correct_answer
       

class AnswerSchema(BaseSchema):
    __model__ = Answer
    question_id = fields.Int(data_key='question_id')
    user_answer_option = fields.Str(data_key='user_answer_option')
    user_answer_right_or_wrong = fields.Boolean(data_key='user_answer_right_or_wrong') 
    correct_answer = fields.Str(data_key='correct_answer')


class AnswerDetail:
    def __init__(self, test_name: str, test_result: int, answerlist: List[Answer] = []) -> None:
        self.test_name = test_name
        self.test_result = test_result
        self.answerlist = answerlist
       

class AnswerDetailSchema(BaseSchema):
    __model__ = AnswerDetail
    test_name = fields.Str(data_key='test_name')
    test_result = fields.Int(data_key='test_result')
    answerlist = fields.Nested(AnswerSchema, data_key='answerlist', many=True)


class GetAnswerDetailRes:
    def __init__(self, result: Result, answerdetail: AnswerDetail) -> None:
        self.result = result
        self.answerdetail = answerdetail

class GetAnswerDetailResSchema(BaseSchema):
    __model__ = GetAnswerDetailRes
    result = fields.Nested(ResultSchema, data_key='result')
    answerdetail = fields.Nested(AnswerDetailSchema, data_key='answerdetail')


#postSchema
class PostAnswer:
    def __init__(self, question_id: int, user_answer_option: str) -> None:
        self.question_id = question_id
        self.user_answer_option = user_answer_option

class PostAnswerSchema(BaseSchema):
    __model__ = PostAnswer
    question_id = fields.Int(data_key='question_id')
    user_answer_option = fields.Str(data_key='user_answer_option')

class PostAnswerDetail:
    def __init__(self, user_id: int, test_id: int, answerlist: List[PostAnswer] = []) -> None:
        self.user_id = user_id
        self.test_id = test_id
        self.answerlist = answerlist      

class PostAnswerDetailSchema(BaseSchema):
    __model__ = PostAnswerDetail
    user_id = fields.Int(data_key='user_id')
    test_id = fields.Int(data_key='test_id')
    answerlist = fields.Nested(PostAnswerSchema, data_key='answerlist', many=True)

class PostAnswerDetailRes:
    def __init__(self, result: Result, answerdetail: PostAnswerDetail) -> None:
        self.result = result
        self.answerdetail = answerdetail

class PostAnswerDetailResSchema(BaseSchema):
    __model__ = PostAnswerDetailRes
    result = fields.Nested(ResultSchema, data_key='result')
    answerdetail = fields.Nested(PostAnswerDetailSchema, data_key='answerdetail')