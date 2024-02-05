# Django + celery + docker project template
This is a template for django REST framework with ```celery```.
It contains (or will contain) everything you need to start your app fast and easy while on hackaton or somewhere idk.

It uses ```redis``` for ```celery``` queue and ```postgres``` for everything else.

```Docker``` used for CI/CD.

Template already has some examples like a ```YourApp``` or a ```tasks.py``` for ```celery```.

## Setup
1. Use this template - Create new repository,
2. Change all names everywhere you need,
3. Important! Change your credentials in ```Dockerfile```, ```docker-compose.yml``` and ```settings.py```.
In this template they're set by default (this is vulnerable, you know),
4. Change ```settings.py``` if necessary (secret key, installed apps, middleware, db's, etc...)
5. Change ```Dockerfil```e or ```docker-compose.yml``` if necessary (if you want an another db or queue)
6. You're ready to go!

## Changing ```docker-compose.yml```
If you want an another db or queue, you should change them in ```docker-compose.yml```.
Note that you will need to change ```settings.py``` - ```DATABASES``` and ```your_queue_name_BROKER_URL``` too!

Also pay attention to ports you utilize for staff.

## Launch
To launch a whole app on docker, use ```docker-compose```.
~~Not tried on servers btw...~~