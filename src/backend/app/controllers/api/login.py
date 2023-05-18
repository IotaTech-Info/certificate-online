# Copyright © 2023 COL-PRO

from logging import exception
from flask_restful import Resource
from flask import request

from ..dto import ResultSchema, Result
from ..dto.login import PostLoginResSchema, LoginSchema, PutLoginSchema,PutLoginResSchema
from ...usecases.login import LoginService
from ...across.exception import COLPROException


class EditLoginAPI(Resource):

    def __init__(self):

        self.service = LoginService()

    # @jwt_required()
    # @helpers.standardize_api_response
    def post(self):

        json_input = request.get_json()
        print(json_input)

        try:
            req = LoginSchema().load(json_input)
            
        except Exception as e:
            return ResultSchema().dump(Result(code='LOGINPOST500_001', message='User does not exist. Or the password is wrong.')), 400
        try:

            res = self.service.post(req)
            return PostLoginResSchema().dump(res), 200
        except COLPROException as e:
            return ResultSchema().dump(e.to_result()), e.status_code
        except Exception as e:
            return ResultSchema().dump(Result(code='LOGINPOST500_002', message='unexpected error: {}'.format(e))), 500

    def put(self):
        json_input = request.get_json()
        print(json_input)
        try:
            req = PutLoginSchema().load(json_input)
            
        except Exception as e:
            return ResultSchema().dump(Result(code='LOGINPUT500_001', message='User does not exist. Or the password is wrong.')), 400
        try:

            self.service.put(req)
            return ResultSchema().dump(Result(code='LOGINPUT200', message='Success')), 200
        except COLPROException as e:
            return ResultSchema().dump(e.to_result()), e.status_code
        except Exception as e:
            return ResultSchema().dump(Result(code='LOGINPUT500_002', message='unexpected error: {}'.format(e))), 500

       
    
