#!/bin/bash

sleep 50

echo "======= POSTGRES IS UP, CONNECTING"

echo '======= MAKING MIGRATIONS'
python3 ./library_back/manage.py makemigrations

echo '======= RUNNING MIGRATIONS'
python3 ./library_back/manage.py migrate

echo '======= RUNNING SERVER'
python3 ./library_back/manage.py runserver 0.0.0.0:8000