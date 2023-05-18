# Copyright © 2023 COL-PRO

from ..controllers.dto import Result


class COLPROException(Exception):
    status_code: int = 999

    def __init__(self, result_code: str, result_msg: str):
        self.result_code = result_code
        self.result_msg = result_msg

    def to_result(self):
        return Result(code=self.result_code, message=self.result_msg)


class COLPROBadRequestException(COLPROException):
    status_code: int = 400  # Jsonのパースエラー等、データ形式が間違っている


class COLPROUnauthoredException(COLPROException):
    status_code: int = 401  # 認証エラー


class COLPRONotFoundException(COLPROException):
    status_code: int = 404  # 存在しない、または削除されている


class COLPROMethodNotAllowedException(COLPROException):
    status_code: int = 405  # 無効、または使用できないメソッド


class COLPROMethodNotAcceptableException(COLPROException):
    status_code: int = 406  # Acceptヘッダに受理できない内容が含まれている


class COLPROConflictException(COLPROException):
    status_code: int = 409  # コンフリクトしている


class COLPROUnsupportedMediaTypeException(COLPROException):
    status_code: int = 415  # リクエストされたデータのメディア形式をサーバーが対応していない


class COLPROInvalidRequestException(COLPROException):
    status_code: int = 422  # 不正なリクエスト


class COLPROInternalServerException(COLPROException):
    status_code: int = 500  # その他のサーバに起因するエラー
