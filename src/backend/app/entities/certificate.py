# Copyright © 2023 COL-PRO
from cgi import test
import datetime
import sqlalchemy as sa

from sqlalchemy.ext.hybrid import hybrid_method

from ..gateways.extensions import sql_db
from ..controllers.dto.certificate import Certificate



class CertificateMapper(sql_db.Model):
    
    __tablename__ = 'certificate'

    certificate_id = sa.Column(sa.Integer, primary_key=True, autoincrement=True)
    certificate_category = sa.Column(sa.String, nullable=False)
    certificate_name = sa.Column(sa.String, nullable=False)
    certificate_description = sa.Column(sa.String, nullable=False)
    create_datetime = sa.Column(sa.DateTime, default=datetime.datetime.utcnow)
    update_datetime = sa.Column(sa.DateTime, default=datetime.datetime.utcnow)

    @hybrid_method
    def to_dto(self) -> Certificate:
        return Certificate(
            certificate_id = self.certificate_id,
            certificate_category = self.certificate_category,
            certificate_name = self.certificate_name,
            certificate_description = self.certificate_description
        )