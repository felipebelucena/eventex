#!/bin/bash
cd /vagrant
source .wttd/bin/activate
# generate fixtures
python manage.py loaddata keynotes.json
gunicorn eventex.wsgi -b 0.0.0.0:8000 --log-file - &
