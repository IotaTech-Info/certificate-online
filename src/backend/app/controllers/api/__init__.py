# Copyright © 2023 COL-PRO

from flask import Blueprint
from ...across import helpers
from . import healthcheck
from . import exam
from . import userinfo
from . import login
from . import answer


blueprint = Blueprint('col-pro', __name__)
api = helpers.MyApi(blueprint, prefix='/col-pro/api/0.0.1')

api.add_resource(healthcheck.HealthCheckAPI,
                 '/health-check')
api.add_resource(login.EditLoginAPI,
                 '/login')
api.add_resource(exam.GetExamListAPI,
                 '/examlist')
api.add_resource(exam.GetExamDetailAPI,
                 '/examdetail/<test_id>')
api.add_resource(userinfo.EditUserinfoAPI,
                 '/userinfo')
api.add_resource(userinfo.GetUserinfoAPI,
                 '/userinfo/<user_id>')
api.add_resource(answer.AnswerAPI,
                 '/answer/<user_id>/<test_id>')

