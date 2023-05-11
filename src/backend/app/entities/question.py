# Copyright © 2022 EL-PRO
from cgitb import text
import code
import datetime
import sqlalchemy as sa
from sqlalchemy.ext.hybrid import hybrid_method

from ..gateways.extensions import sql_db
from ..controllers.dto.exam import Question


class QuestionMapper(sql_db.Model):
    
    __tablename__ = 'question'

    question_id = sa.Column(sa.Integer, primary_key=True)
    test_id = sa.Column(sa.Integer, primary_key=True,  nullable=False)
    text = sa.Column(sa.String, nullable=False)
    code = sa.Column(sa.String, nullable=True)
    right_select_count = sa.Column(sa.Boolean, nullable=False)
    create_datetime = sa.Column(sa.DateTime, default=datetime.datetime.utcnow)
    update_datetime = sa.Column(sa.DateTime, default=datetime.datetime.utcnow)

    @hybrid_method
    def to_dto(self) -> Question:
        return Question(
            question_id = self.question_id,
            question_text = self.text,
            code = self.code,
            right_select_count = self.right_select_count,
            optionlist = []
        )