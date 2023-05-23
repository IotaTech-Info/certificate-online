# Copyright © 2023 COL-PRO

from typing import List
from marshmallow import fields
from . import Result, ResultSchema, BaseSchema


class CertificateEvent:
    def __init__(self,
                 certificate_id: int, 
                 user_name: str, 
                 certificate_category: str, 
                 certificate_name: str, 
                 certificate_status: str,
                 expected_date: str,
                 acquisition_date: str,
                 ) -> None:
        self.certificate_id = certificate_id
        self.user_name = user_name
        self.certificate_category = certificate_category
        self.certificate_name = certificate_name
        self.certificate_status = certificate_status
        self.expected_date = expected_date
        self.acquisition_date = acquisition_date

class CertificateEventSchema(BaseSchema):
    __model__ = CertificateEvent
    certificate_id = fields.Int(data_key='certificate_id')
    user_name = fields.Str(data_key='user_name')
    certificate_category = fields.Str(data_key='certificate_category')
    certificate_name = fields.Str(data_key='certificate_name')
    certificate_status = fields.Str(data_key='certificate_status')
    expected_date = fields.Str(data_key='expected_date')
    acquisition_date = fields.Str(data_key='acquisition_date')


class GetCertificateEventListRes:
    def __init__(self, result: Result, certificate_events: List[CertificateEvent] = []) -> None:
        self.result = result
        self.certificate_events = certificate_events


class GetCertificateEventListResSchema(BaseSchema):
    __model__ = GetCertificateEventListRes
    result = fields.Nested(ResultSchema, data_key='result')
    certificate_events = fields.Nested(CertificateEventSchema, data_key='certificate_events', many=True)


