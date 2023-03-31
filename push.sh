#!/bin/bash
cd /Odoo/env/env15/addons/new_pipeline_test
git pull origin master
systemctl stop odoo
source /Odoo/env/env15/bin/activate
/Odoo/src/odoo/odoo-bin -c /Odoo/env/env15/config/env15.conf -i account --stop-after-init
deactivate
systemctl start odoo
