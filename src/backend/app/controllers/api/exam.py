# Copyright © 2023 COL-PRO

from flask_restful import Resource

from ..dto import ResultSchema, Result
from ..dto.exam import GetExamListResSchema, GetExamDetailResSchema
from ...usecases.exam import ExamService
from ...across.exception import COLPROException


class GetExamListAPI(Resource):

    def __init__(self):
        self.service = ExamService()

    def get(self):
        try:
            res = self.service.get_list()
            return GetExamListResSchema().dump(res), 200
        except COLPROException as e:
            return ResultSchema().dump(e.to_result()), e.status_code
        except Exception as e:
            return ResultSchema().dump(Result(code='EXAMLISTGET500', message='unexpected error: {}'.format(e))), 500

class GetExamDetailAPI(Resource):
    
    def __init__(self):
        self.service = ExamService()

    def get(self, test_id: str):
        try:
            res = self.service.get_detail(test_id)
            return GetExamDetailResSchema().dump(res), 200
        except COLPROException as e:
            return ResultSchema().dump(e.to_result()), e.status_code
        except Exception as e:
            return ResultSchema().dump(Result(code='EXAMDETAILGET500', message='unexpected error: {}'.format(e))), 500

