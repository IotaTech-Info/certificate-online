# Copyright © 2023 COL-PRO

import os
from flask_script import Manager, Shell, Server

from app import create_app
from app.gateways.extensions import nosql_db
from distutils.util import strtobool

if 'CONTAINER_DEBUG_FLAG' in os.environ:
    try:
        import ptvsd
        ptvsd_port = 5678
        ptvsd.enable_attach(address=('0.0.0.0', ptvsd_port))
        ptvsd.wait_for_attach()
    except:
        pass


app = create_app(os.getenv('FLASK_CONFIG') or 'default',
                 is_init_db=bool(strtobool(os.getenv('COLPRO_TB_INIT_DB', default='True'))))

manager = Manager(app)

# access python shell with context
manager.add_command(
    "shell",
    Shell(make_context=lambda: {'app': app, 'db': nosql_db}), use_ipython=True)

# run the app
manager.add_command(
    "startserver",
    Server(port=(os.getenv('FLASK_PORT') or 5000), host='0.0.0.0'))

if __name__ == '__main__':
    manager.run()
