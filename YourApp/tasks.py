from DjangoCeleryProjectTemplate.celery import app

# Example function for celery.
@app.task
def sum(*args, **kwargs):
    number1 = args[0]
    number2 = args[1]

    return number1 + number2