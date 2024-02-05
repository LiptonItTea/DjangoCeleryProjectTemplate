FROM --platform=linux/amd64 python:latest

WORKDIR /project

# Installing dependencies here, because it creates layer of dependencies so you won't install them again.
COPY requirements.txt .
RUN pip install -r requirements.txt

ENV PYTHONUNBUFFERED=1
# Change this.
ENV DJANGO_SUPERUSER_USERNAME="root"
ENV DJANGO_SUPERUSER_PASSWORD="root"
ENV DJANGO_SUPERUSER_EMAIL="example@gmail.com"
# Your secret key. Example here uses key autogenerated by django for this project.
ENV DJANGO_SECRET_KEY="django-insecure-r916d(k(5x2j**3cb(#idsnm!@44vuij1v7y=)#&0rk4(_7bim"

COPY . /project
EXPOSE 8000

RUN chmod +x /project/EntryPoints/server-entrypoint.sh
RUN chmod +x /project/EntryPoints/celery-entrypoint.sh