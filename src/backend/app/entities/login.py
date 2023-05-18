# Copyright © 2023 COL-PRO
import datetime
import sqlalchemy as sa
from sqlalchemy.orm import relationship
from sqlalchemy.ext.hybrid import hybrid_method

from ..gateways.extensions import sql_db



class LoginMapper(sql_db.Model):
    
    __tablename__ = 'login'

    user_id = sa.Column(sa.Integer, primary_key=True, autoincrement=True)
    mail = sa.Column(sa.String, nullable=False)
    password = sa.Column(sa.String, nullable=False)
    create_datetime = sa.Column(sa.DateTime, default=datetime.datetime.utcnow)
    update_datetime = sa.Column(sa.DateTime, default=datetime.datetime.utcnow)

