#!/bin/sh
# This is an entrypoint file that enables celery. Change it if you know what you're doing.
until cd /project
do
  echo "Celery waiting for server volume..."
done

celery -A DjangoCeleryProjectTemplate worker -l info