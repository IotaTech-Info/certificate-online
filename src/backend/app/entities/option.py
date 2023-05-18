# Copyright © 2023 COL-PRO
from cgitb import text
import datetime
import sqlalchemy as sa
from sqlalchemy.ext.hybrid import hybrid_method

from ..gateways.extensions import sql_db
from ..controllers.dto.exam import Option


class OptionMapper(sql_db.Model):
    
    __tablename__ = 'option'

    option_id = sa.Column(sa.Integer, primary_key=True)
    question_id = sa.Column(sa.Integer, primary_key=True,  nullable=False)
    test_id = sa.Column(sa.Integer, primary_key=True,  nullable=False)

    text = sa.Column(sa.String, nullable=False)
    right_or_wrong = sa.Column(sa.Boolean, nullable=False)
    
    create_datetime = sa.Column(sa.DateTime, default=datetime.datetime.utcnow)
    update_datetime = sa.Column(sa.DateTime, default=datetime.datetime.utcnow)


    @hybrid_method
    def to_dto(self) -> Option:
        return Option(
            option_id = self.option_id,
            option_text = self.text,
            right_or_wrong = self.right_or_wrong
        )