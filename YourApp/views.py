from django.shortcuts import render

from rest_framework import generics, status
from rest_framework.decorators import action, permission_classes, api_view, renderer_classes
from rest_framework.permissions import IsAuthenticatedOrReadOnly, IsAuthenticated

from rest_framework.response import Response
from rest_framework.views import APIView

from .tasks import sum

@api_view(("POST",))
def sum_view(request, *args, **kwargs):
    """ Example view that utilizes celery.
        Before using this, you should authorize, i.e. get a token via
        post: .../auth/token/login/
        with a body of {\"username\": \"...\", \"password\": \"...\"}. """
    if not request.user.is_authenticated:
        return Response(status=status.HTTP_401_UNAUTHORIZED)

    number1 = int(request.data["number1"])
    number2 = int(request.data["number2"])

    result = sum(number1, number2)

    return Response(result)