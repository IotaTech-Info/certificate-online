# Copyright © 2022 EL-PRO
from cgi import test
import datetime
import sqlalchemy as sa

from sqlalchemy.ext.hybrid import hybrid_method

from ..gateways.extensions import sql_db
from ..controllers.dto.exam import Exam



class ExamMapper(sql_db.Model):
    
    __tablename__ = 'exam'

    test_id = sa.Column(sa.Integer, primary_key=True, autoincrement=True)
    test_category = sa.Column(sa.String, nullable=False)
    test_name = sa.Column(sa.String, nullable=False)
    description = sa.Column(sa.String, nullable=False)
    create_datetime = sa.Column(sa.DateTime, default=datetime.datetime.utcnow)
    update_datetime = sa.Column(sa.DateTime, default=datetime.datetime.utcnow)

    @hybrid_method
    def to_dto(self) -> Exam:
        return Exam(
            test_id = self.test_id,
            test_category = self.test_category,
            test_name = self.test_name,
            description = self.description
        )