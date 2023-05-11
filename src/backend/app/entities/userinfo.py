# Copyright © 2022 EL-PRO
import datetime
import sqlalchemy as sa
from sqlalchemy.orm import relationship
from sqlalchemy.ext.hybrid import hybrid_method

from ..gateways.extensions import sql_db



class UserinfoMapper(sql_db.Model):
    
    __tablename__ = 'userinfo'

    user_id = sa.Column(sa.Integer, primary_key=True, autoincrement=True)
    lastname = sa.Column(sa.String, nullable=False)
    firstname = sa.Column(sa.String, nullable=False)
    birthday = sa.Column(sa.String, nullable=False)
    sex = sa.Column(sa.String, unique=False)
    company = sa.Column(sa.String,nullable=True)
    city = sa.Column(sa.String, nullable=False)
    create_datetime = sa.Column(sa.DateTime, default=datetime.datetime.utcnow)
    update_datetime = sa.Column(sa.DateTime, default=datetime.datetime.utcnow)

