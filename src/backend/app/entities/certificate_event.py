# Copyright © 2023 COL-PRO
import datetime
import sqlalchemy as sa

from ..gateways.extensions import sql_db
from sqlalchemy.orm import relationship
from sqlalchemy.ext.hybrid import hybrid_method

from ..controllers.dto.certificate_event import CertificateEvent


class CertificateEventMapper(sql_db.Model):
    
    __tablename__ = 'certificate_event'

    certificate_event_id = sa.Column(sa.Integer, primary_key=True, autoincrement=True)
    user_id = sa.Column(sa.Integer, sa.ForeignKey('userinfo.user_id'))
    certificate_id = sa.Column(sa.Integer, sa.ForeignKey('certificate.certificate_id'))
    certificate_status = sa.Column(sa.Integer, nullable=False)
    expected_date = sa.Column(sa.DateTime, default=datetime.datetime.utcnow)
    acquisition_date = sa.Column(sa.DateTime, default=datetime.datetime.utcnow)
    create_datetime = sa.Column(sa.DateTime, default=datetime.datetime.utcnow)
    update_datetime = sa.Column(sa.DateTime, default=datetime.datetime.utcnow)
    
    certificate = relationship('CertificateMapper')
    userinfo = relationship('UserinfoMapper')

    @hybrid_method
    def to_dto(self) -> CertificateEvent:
        return CertificateEvent(
            certificate_id = self.certificate_id,
            user_name=self.userinfo.lastname + ' ' + self.userinfo.firstname,
            certificate_category = self.certificate.certificate_category,
            certificate_name = self.certificate.certificate_name,
            certificate_status = self.certificate_status,
            expected_date = self.expected_date,
            acquisition_date = self.acquisition_date
        )