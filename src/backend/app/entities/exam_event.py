# Copyright © 2023 COL-PRO
import datetime
import sqlalchemy as sa
from sqlalchemy.orm import relationship
from sqlalchemy.ext.hybrid import hybrid_method

from ..gateways.extensions import sql_db



class Exam_EventMapper(sql_db.Model):
    
    __tablename__ = 'exam_event'

    
    exam_event_id = sa.Column(sa.Integer, primary_key=True, autoincrement=True)
    user_id = sa.Column(sa.Integer, nullable=False)
    test_id = sa.Column(sa.Integer, nullable=False)
    
    test_result = sa.Column(sa.Integer, nullable=False)
    
    create_datetime = sa.Column(sa.DateTime, default=datetime.datetime.utcnow)
    update_datetime = sa.Column(sa.DateTime, default=datetime.datetime.utcnow)

