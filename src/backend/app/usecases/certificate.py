# Copyright © 2023 COL-PRO
from sqlalchemy.exc import SQLAlchemyError



from ..controllers.dto import Result
from ..controllers.dto.certificate import GetCertificateListRes
from ..entities.certificate import CertificateMapper
from ..across.exception import COLPROInvalidRequestException, COLPROInternalServerException

class CertificateService:

    def get_list(self):
        try:
          certificates = CertificateMapper.query.all()

          return GetCertificateListRes(
            result=Result(code='CFLISTGET200', message="Success."),
            certificates=[e.to_dto() for e in certificates]
          )

        except SQLAlchemyError as e:
            raise COLPROInvalidRequestException('CFLISTGET500_000', 'database error: {}'.format(e))
        except Exception as e:
            raise COLPROInternalServerException(result_code='CFLISTGET500_999', result_msg='internal server error: {}'.format(e))

