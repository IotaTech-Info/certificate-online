# Copyright © 2023 COL-PRO

from flask import Blueprint
from ...across import helpers
from . import healthcheck
from . import certificate
from . import certificate_event
from . import userinfo
from . import login


blueprint = Blueprint('col-pro', __name__)
api = helpers.MyApi(blueprint, prefix='/col-pro/api/0.0.1')

api.add_resource(healthcheck.HealthCheckAPI,
                 '/health-check')
api.add_resource(login.EditLoginAPI,
                 '/login')
api.add_resource(certificate.GetCertificateListAPI,
                 '/certificates')
api.add_resource(certificate_event.GetCertificateEventListAPI,
                 '/certificate_events')
api.add_resource(userinfo.EditUserinfoAPI,
                 '/userinfo')
api.add_resource(userinfo.GetUserinfoAPI,
                 '/userinfo/<user_id>')


