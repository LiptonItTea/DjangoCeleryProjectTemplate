from DjangoCeleryProjectTemplate.celery import app

@app.task
def sum(*args, **kwargs):
    """ Example function for celery. """
    number1 = args[0]
    number2 = args[1]

    return number1 + number2