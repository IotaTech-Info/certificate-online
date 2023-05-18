# Copyright © 2023 COL-PRO

from logging import exception
from flask_restful import Resource
from flask import request

from ..dto import ResultSchema, Result
from ..dto.answer import GetAnswerDetailResSchema, PostAnswerDetailSchema
from ...usecases.answer import AnswerService
from ...across.exception import COLPROException


class AnswerAPI(Resource):

    def __init__(self):
        self.service = AnswerService()

    def get(self, user_id: str, test_id: str):
        try:

            res = self.service.get(user_id, test_id)
            return GetAnswerDetailResSchema().dump(res), 200
        except COLPROException as e:
            return ResultSchema().dump(e.to_result()), e.status_code
        except Exception as e:
            return ResultSchema().dump(Result(code='ANSWERGET500_002', message='unexpected error: {}'.format(e))), 500


    def post(self):

        json_input = request.get_json()
        try:
            req = PostAnswerDetailSchema().load(json_input)
        except Exception as e:
            return ResultSchema().dump(Result(code='ANSWERPOST500_001', message='unexpected error: {}'.format(e))), 500
        try:
            self.service.add(req)
            return ResultSchema().dump(Result(code='ANSWERPOST200', message='success')), 200
        except COLPROException as e:
            return ResultSchema().dump(e.to_result()), e.status_code
        except Exception as e:
            return ResultSchema().dump(Result(code='ANSWERPOST500_002', message='unexpected error: {}'.format(e))), 500
