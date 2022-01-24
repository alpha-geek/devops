#!/bin/bash


if [[ ${SERVER_MODE} =~ [Dd][Ee][Vv][Ee][Ll][Oo][Pp] ]]; then
    echo "develop settings"
    python manage.py runserver  8080
else
    echo "Production settings"
    uwsgi --http :8080 --module webapp.wsgi  --env DJANGO_SETTINGS_MODULE=webapp.settings \
    --processes=5 --harakiri=20 --max-requests=5000

fi