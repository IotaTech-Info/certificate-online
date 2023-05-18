# Copyright © 2023 COL-PRO

from flask_restful import Resource
from flask import request

from ..dto import ResultSchema, Result
from ..dto.userinfo import PostUserinfoSchema, GetUserinfoResSchema, PutUserinfoSchema
from ...usecases.userinfo import UserinfoService
from ...across.exception import COLPROException


class EditUserinfoAPI(Resource):

    def __init__(self):
        self.service = UserinfoService()

    def post(self):

        json_input = request.get_json()
        try:
            req = PostUserinfoSchema().load(json_input)
        except Exception as e:
            return ResultSchema().dump(Result(code='USERINFOPOST500_001', message='unexpected error: {}'.format(e))), 500
        try:
            self.service.add(req)
            return ResultSchema().dump(Result(code='USERINFOPOST200', message='success')), 200
        except COLPROException as e:
            return ResultSchema().dump(e.to_result()), e.status_code
        except Exception as e:
            return ResultSchema().dump(Result(code='USERINFOPOST500_002', message='unexpected error: {}'.format(e))), 500

    def put(self):

        json_input = request.get_json()
        try:
            req = PutUserinfoSchema().load(json_input)
        except Exception as e:
            return ResultSchema().dump(Result(code='USERINFOPUT500_001', message='unexpected error: {}'.format(e))), 500
        try:
            self.service.put(req)
            return ResultSchema().dump(Result(code='USERINFOPUT200', message='success')), 200
        except COLPROException as e:
            return ResultSchema().dump(e.to_result()), e.status_code
        except Exception as e:
            return ResultSchema().dump(Result(code='USERINFOPUT500_002', message='unexpected error: {}'.format(e))), 500

class GetUserinfoAPI(Resource):
    
    def __init__(self):

        self.service = UserinfoService()
    
    def get(self, user_id: str):

        try:
            res = self.service.get(int(user_id))
            return GetUserinfoResSchema().dump(res), 200 
        except COLPROException as e:
            return ResultSchema().dump(e.to_result()), e.status_code
        except Exception as e:
            return ResultSchema().dump(Result(code='USERINFOGET500_002', message='unexpected error: {}'.format(e))), 500