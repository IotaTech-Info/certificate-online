# Copyright © 2022 EL-PRO
import datetime
import sqlalchemy as sa
from sqlalchemy.ext.hybrid import hybrid_method

from ..gateways.extensions import sql_db
from ..controllers.dto.answer import Answer


class User_Test_AnswerMapper(sql_db.Model):
    
    __tablename__ = 'user_test_answer'

    exam_event_id = sa.Column(sa.Integer, primary_key=True, nullable=False)
    question_id = sa.Column(sa.Integer, primary_key=True, nullable=False)

    user_answer_right_or_wrong = sa.Column(sa.Boolean, nullable=False)
    user_answer_option = sa.Column(sa.String, nullable=False)
    
    create_datetime = sa.Column(sa.DateTime, default=datetime.datetime.utcnow)
    update_datetime = sa.Column(sa.DateTime, default=datetime.datetime.utcnow)

    @hybrid_method
    def to_dto(self) -> Answer:
        return Answer(
            question_id = self.question_id,
            user_answer_right_or_wrong = self.user_answer_right_or_wrong,
            user_answer_option = self.user_answer_option,
            correct_answer = ''
        )
