# Copyright © 2023 COL-PRO

from typing import List
from marshmallow import fields
from . import Result, ResultSchema, BaseSchema


class Certificate:
    def __init__(self, 
                 certificate_id: int, 
                 certificate_category: str, 
                 certificate_name: str, 
                 certificate_description: str) -> None:
        self.certificate_id = certificate_id
        self.certificate_category = certificate_category
        self.certificate_name = certificate_name
        self.certificate_description = certificate_description

class CertificateSchema(BaseSchema):
    __model__ = Certificate
    certificate_id = fields.Int(data_key='certificate_id')
    certificate_category = fields.Str(data_key='certificate_category')
    certificate_name = fields.Str(data_key='certificate_name')
    certificate_description = fields.Str(data_key='certificate_description')


class GetCertificateListRes:
    def __init__(self, result: Result, certificates: List[Certificate] = []) -> None:
        self.result = result
        self.certificates = certificates


class GetCertificateListResSchema(BaseSchema):
    __model__ = GetCertificateListRes
    result = fields.Nested(ResultSchema, data_key='result')
    certificates = fields.Nested(CertificateSchema, data_key='certificates', many=True)


