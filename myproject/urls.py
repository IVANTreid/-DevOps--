from django.http import HttpResponse
from django.urls import path


def health_check(request):
    return HttpResponse("OK")


urlpatterns = [
    path('health/', health_check, name='health'),
]
