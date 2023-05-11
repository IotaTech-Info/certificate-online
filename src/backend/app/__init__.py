# Copyright © 2022 EL-PRO

import flask
from itertools import chain
from flask_injector import FlaskInjector
from pathlib import Path
import shutil
import os

from .controllers import api
from .gateways import extensions, config
from .gateways.auth import jwt
from .di_module import di_module


def create_app(config_name='default', is_init_db: bool = True):
    """Flask app factory
    :config_name: a string object.
    :returns: flask.Flask object
    """

    app = flask.Flask(__name__)

    # set the config vars using the config name and current_app
    config.config[config_name](app)

    jwt.set_jwt_handlers(extensions.jwt)

    register_extensions(app)
    register_blueprints(app)

    if is_init_db:
        init_db(app, config_name=config_name)

    FlaskInjector(app=app, modules=[di_module])

    return app


def register_extensions(app):
    """Call the method 'init_app' to register the extensions in the flask.Flask
    object passed as parameter.
    :app: flask.Flask object
    :returns: None
    """
    extensions.nosql_db.init_app(app)
    extensions.jwt.init_app(app)
    extensions.sql_db.init_app(app)
    extensions.ma.init_app(app)


def register_blueprints(app):
    """Register all blueprints.
    :app: flask.Flask object
    :returns: None
    """
    app.register_blueprint(api.blueprint)


def init_db(app, config_name):
    with app.app_context():
        extensions.sql_db.drop_all()
        extensions.sql_db.create_all()

        _init_db_common(config_name)

        _init_db_demo_2()

        extensions.sql_db.session.commit()


def _init_db_common(config_name):
    """共通のDBレコード"""
    



def _init_db_demo_2():
    """デモ用（レポート機能）"""
   


