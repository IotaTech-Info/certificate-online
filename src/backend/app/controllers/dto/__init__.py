# Copyright © 2023 COL-PRO

from marshmallow import Schema, fields, post_load


class BaseSchema(Schema):
    __model__ = None

    @post_load
    def to_dto(self, data, **_):
        return self.__model__(**data)

    class Meta:
        ordered = True


class Result:
    def __init__(self, code: str, message: str) -> None:
        self.code = code
        self.message = message


class ResultSchema(BaseSchema):
    __model__ = Result
    code = fields.Str(data_key='code')
    message = fields.Str(data_key='message')
