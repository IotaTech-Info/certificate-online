# Copyright © 2023 COL-PRO
import datetime
import sqlalchemy as sa
from sqlalchemy.orm import relationship
from sqlalchemy.ext.hybrid import hybrid_method

from ..gateways.extensions import sql_db



class Login_EventMapper(sql_db.Model):
    
    __tablename__ = 'login_event'

    user_id = sa.Column(sa.Integer, primary_key=True, nullable=False)
    login_datetime = sa.Column(sa.DateTime, primary_key=True,default=datetime.datetime.utcnow)
    logout_datetime = sa.Column(sa.DateTime, default=datetime.datetime.utcnow)

