# Copyright © 2023 COL-PRO

from marshmallow import fields
from . import Result, ResultSchema, BaseSchema



class PutUserinfo:
    def __init__(self, user_id: int, lastname: str, firstname: str, 
                sex: str, company: str, city: str) -> None:
        self.user_id = user_id
        self.lastname = lastname
        self.firstname = firstname
        self.sex = sex
        self.company = company
        self.city = city

class PutUserinfoSchema(BaseSchema):
    __model__ = PutUserinfo
    user_id = fields.Int(data_key='user_id')
    lastname = fields.Str(data_key='lastname')
    firstname = fields.Str(data_key='firstname')
    sex = fields.Str(data_key='sex')
    company = fields.Str(data_key='company')
    city = fields.Str(data_key='city')


class PutUserinfoRes:
    def __init__(self, result: Result, userinfo: PutUserinfo) -> None:
        self.result = result
        self.userinfo = userinfo

class PutUserinfoResSchema(BaseSchema):
    __model__ = PutUserinfoRes
    result = fields.Nested(ResultSchema, data_key='result')
    userinfo = fields.Nested(PutUserinfoSchema, data_key='userinfo')


class PostUserinfo:
    def __init__(self, mail: str, password: str, lastname: str, firstname: str, 
                birthday: str, sex: str, company: str, city: str) -> None:
        self.mail = mail
        self.password = password
        self.lastname = lastname
        self.firstname = firstname
        self.birthday = birthday
        self.sex = sex
        self.company = company
        self.city = city

class PostUserinfoSchema(BaseSchema):
    __model__ = PostUserinfo
    mail = fields.Str(data_key='mail')
    password = fields.Str(data_key='password')
    lastname = fields.Str(data_key='lastname')
    firstname = fields.Str(data_key='firstname')
    birthday = fields.Str(data_key='birthday')
    sex = fields.Str(data_key='sex')
    company = fields.Str(data_key='company')
    city = fields.Str(data_key='city')


class PostUserinfoRes:
    def __init__(self, result: Result, userinfo: PostUserinfo) -> None:
        self.result = result
        self.userinfo = userinfo

class PostUserinfoResSchema(BaseSchema):
    __model__ = PostUserinfoRes
    result = fields.Nested(ResultSchema, data_key='result')
    userinfo = fields.Nested(PostUserinfoSchema, data_key='userinfo')


class GetUserinfo:
    def __init__(self, mail: str, lastname: str, firstname: str, 
                birthday: str, sex: str, company: str, city: str) -> None:
        self.mail = mail
        self.lastname = lastname
        self.firstname = firstname
        self.birthday = birthday
        self.sex = sex
        self.company = company
        self.city = city

class GetUserinfoSchema(BaseSchema):
    __model__ = GetUserinfo
    mail = fields.Str(data_key='mail')
    lastname = fields.Str(data_key='lastname')
    firstname = fields.Str(data_key='firstname')
    birthday = fields.Str(data_key='birthday')
    sex = fields.Str(data_key='sex')
    company = fields.Str(data_key='company')
    city = fields.Str(data_key='city')


class GetUserinfoRes:
    def __init__(self, result: Result, userinfo: GetUserinfo) -> None:
        self.result = result
        self.userinfo = userinfo

class GetUserinfoResSchema(BaseSchema):
    __model__ = GetUserinfoRes
    result = fields.Nested(ResultSchema, data_key='result')
    userinfo = fields.Nested(GetUserinfoSchema, data_key='userinfo')



