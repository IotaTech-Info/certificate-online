# Copyright © 2022 EL-PRO

from marshmallow import fields
from . import Result, ResultSchema, BaseSchema


class Userinfo:
    def __init__(self, user_id: int, lastname: str, firstname: str) -> None:
        self.user_id = user_id
        self.lastname = lastname
        self.firstname = firstname

class UserinfoSchema(BaseSchema):
    __model__ = Userinfo
    user_id = fields.Int(data_key='user_id')
    lastname = fields.Str(data_key='lastname')
    firstname = fields.Str(data_key='firstname')

class Login:
    def __init__(self, mail: str, password: str) -> None:
        self.mail = mail
        self.password = password

class LoginSchema(BaseSchema):
    __model__ = Login
    mail = fields.Str(data_key='mail')
    password = fields.Str(data_key='password')
    user_id = fields.Int(data_key='user_id')


class PostLoginRes:
    def __init__(self, result: Result, userinfo: Userinfo) -> None:
        self.result = result
        self.userinfo = userinfo

class PostLoginResSchema(BaseSchema):
    __model__ = PostLoginRes
    result = fields.Nested(ResultSchema, data_key='result')
    userinfo = fields.Nested(UserinfoSchema, data_key='userinfo')



class PutLogin:
    def __init__(self, user_id: int, oldpassword: str,newpassword : str) -> None:
        self.user_id = user_id
        self.oldpassword = oldpassword
        self.newpassword = newpassword

class PutLoginSchema(BaseSchema):
    __model__ = PutLogin
    user_id = fields.Int(data_key='user_id')
    oldpassword = fields.Str(data_key='oldpassword')
    newpassword = fields.Str(data_key='newpassword')

class PutLoginRes:
    def __init__(self, result: Result, login: PutLogin) -> None:
        self.result = result
        self.login = login

class PutLoginResSchema(BaseSchema):
    __model__ = PutLoginRes
    result = fields.Nested(ResultSchema, data_key='result')
    login = fields.Nested(PutLoginSchema, data_key='login')


