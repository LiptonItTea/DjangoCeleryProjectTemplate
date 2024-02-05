#!/bin/sh

until cd /project
do
  echo "Server waiting for server volume..."
done

until python manage.py migrate
do
  echo "Applying migrations..."
done

echo "Creating superuser..."
python manage.py createsuperuser --no-input --username $DJANGO_SUPERUSER_USERNAME --email $DJANGO_SUPERUSER_EMAIL

python manage.py runserver 0.0.0.0:8000