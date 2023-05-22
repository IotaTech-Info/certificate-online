# Copyright © 2023 COL-PRO
import datetime
import sqlalchemy as sa

from ..gateways.extensions import sql_db



class CertificateEventMapper(sql_db.Model):
    
    __tablename__ = 'certificate_event'

    certificate_event_id = sa.Column(sa.Integer, primary_key=True, autoincrement=True)
    user_id = sa.Column(sa.Integer, nullable=False)
    certificate_id = sa.Column(sa.Integer, nullable=False)
    certificate_status = sa.Column(sa.Integer, nullable=False)
    expected_date = sa.Column(sa.DateTime, default=datetime.datetime.utcnow)
    acquisition_date = sa.Column(sa.DateTime, default=datetime.datetime.utcnow)
    create_datetime = sa.Column(sa.DateTime, default=datetime.datetime.utcnow)
    update_datetime = sa.Column(sa.DateTime, default=datetime.datetime.utcnow)

