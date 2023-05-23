# Copyright © 2023 COL-PRO
from sqlalchemy.exc import SQLAlchemyError



from ..controllers.dto import Result
from ..controllers.dto.certificate_event import GetCertificateEventListRes
from ..entities.certificate_event import CertificateEventMapper
from ..across.exception import COLPROInvalidRequestException, COLPROInternalServerException

class CertificateEventService:

    def get_list(self):
        try:
          certificate_events = CertificateEventMapper.query.all()

          return GetCertificateEventListRes(
            result=Result(code='CFEVENTLISTGET200', message="Success."),
            certificate_events=[e.to_dto() for e in certificate_events]
          )

        except SQLAlchemyError as e:
            raise COLPROInvalidRequestException('CFLISTGET500_000', 'database error: {}'.format(e))
        except Exception as e:
            raise COLPROInternalServerException(result_code='CFLISTGET500_999', result_msg='internal server error: {}'.format(e))

