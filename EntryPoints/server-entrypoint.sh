#!/bin/sh
# This is an entrypoint file that boots enables django REST framework. Change it if you know what you're doing.
until cd /project
do
  echo "Server waiting for server volume..."
done

until python manage.py migrate
do
  echo "Applying migrations..."
done

# No 'until' because it will stuck if using the same volume from the previous build.
echo "Creating superuser..."
python manage.py createsuperuser --no-input --username $DJANGO_SUPERUSER_USERNAME --email $DJANGO_SUPERUSER_EMAIL

python manage.py runserver 0.0.0.0:8000