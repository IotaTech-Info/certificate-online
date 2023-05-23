# Copyright © 2023 COL-PRO

from flask_restful import Resource

from ..dto import ResultSchema, Result
from ..dto.certificate_event import GetCertificateEventListResSchema
from ...usecases.certificate_event import CertificateEventService
from ...across.exception import COLPROException


class GetCertificateEventListAPI(Resource):

    def __init__(self):
        self.service = CertificateEventService()

    def get(self):
        try:
            res = self.service.get_list()
            return GetCertificateEventListResSchema().dump(res), 200
        except COLPROException as e:
            return ResultSchema().dump(e.to_result()), e.status_code
        except Exception as e:
            return ResultSchema().dump(Result(code='CFEVENTLISTGET500', message='unexpected error: {}'.format(e))), 500
