# Copyright © 2022 EL-PRO

from ..controllers.dto import Result


class ELPROException(Exception):
    status_code: int = 999

    def __init__(self, result_code: str, result_msg: str):
        self.result_code = result_code
        self.result_msg = result_msg

    def to_result(self):
        return Result(code=self.result_code, message=self.result_msg)


class ELPROBadRequestException(ELPROException):
    status_code: int = 400  # Jsonのパースエラー等、データ形式が間違っている


class ELPROUnauthoredException(ELPROException):
    status_code: int = 401  # 認証エラー


class ELPRONotFoundException(ELPROException):
    status_code: int = 404  # 存在しない、または削除されている


class ELPROMethodNotAllowedException(ELPROException):
    status_code: int = 405  # 無効、または使用できないメソッド


class ELPROMethodNotAcceptableException(ELPROException):
    status_code: int = 406  # Acceptヘッダに受理できない内容が含まれている


class ELPROConflictException(ELPROException):
    status_code: int = 409  # コンフリクトしている


class ELPROUnsupportedMediaTypeException(ELPROException):
    status_code: int = 415  # リクエストされたデータのメディア形式をサーバーが対応していない


class ELPROInvalidRequestException(ELPROException):
    status_code: int = 422  # 不正なリクエスト


class ELPROInternalServerException(ELPROException):
    status_code: int = 500  # その他のサーバに起因するエラー
