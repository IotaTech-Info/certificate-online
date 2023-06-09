# Copyright © 2023 COL-PRO

from flask_restful import Resource

from ..dto.healthcheck import GetHealtcheckResSchema
from ...usecases.healthcheck import HealthcheckService


class HealthCheckAPI(Resource):

    def __init__(self):
        # TODO 要DI
        self.service = HealthcheckService()

    # @jwt_required()
    # @helpers.standardize_api_response
    # TODO 要変換アノテーション
    def get(self):
        res = self.service.get()
        return GetHealtcheckResSchema().dump(res), 200
