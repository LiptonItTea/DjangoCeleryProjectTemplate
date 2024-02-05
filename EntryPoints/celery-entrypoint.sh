#!/bin/sh

until cd /project
do
  echo "Celery waiting for server volume..."
done

celery -A DjangoCeleryProjectTemplate worker -l info