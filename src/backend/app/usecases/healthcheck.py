# Copyright © 2022 EL-PRO

from ..controllers.dto.healthcheck import GetHealtcheckRes


class HealthcheckService:
    def get(self) -> GetHealtcheckRes:
        return GetHealtcheckRes(code=0, message='alive.')
