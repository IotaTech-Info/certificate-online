# Copyright © 2023 COL-PRO

from flask_restful import Resource

from ..dto import ResultSchema, Result
from ..dto.certificate import GetCertificateListResSchema
from ...usecases.certificate import CertificateService
from ...across.exception import COLPROException


class GetCertificateListAPI(Resource):

    def __init__(self):
        self.service = CertificateService()

    def get(self):
        try:
            res = self.service.get_list()
            return GetCertificateListResSchema().dump(res), 200
        except COLPROException as e:
            return ResultSchema().dump(e.to_result()), e.status_code
        except Exception as e:
            return ResultSchema().dump(Result(code='CFLISTGET500', message='unexpected error: {}'.format(e))), 500
