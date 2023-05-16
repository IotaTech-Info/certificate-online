# Copyright © 2022 EL-PRO

from flask import Blueprint
from ...across import helpers

from . import login
from . import certsearch
from . import getdata
from . import message
from . import staff
from . import upload



blueprint = Blueprint('el-pro', __name__)
api = helpers.MyApi(blueprint, prefix='/el-pro/api/0.0.1')


api.add_resource(login.EditLoginAPI,
                 '/login')
api.add_resource(staff.StaffAPI,
                 '/staffinfo')
api.add_resource(certsearch.CertsearchAPI,
                 '/certsearch')
api.add_resource(message.MessageAPI,
                 '/message')
api.add_resource(upload.UploadAPI,
                 '/upload')
api.add_resource(getdata.GetdataAPI,
                 '/getdata')

