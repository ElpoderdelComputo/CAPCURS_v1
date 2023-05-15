from django.contrib.auth.backends import BaseBackend
from capcursapp.models import Coordinaciones

class CoordinacionesBackend(BaseBackend):
    def authenticate(self, request, username=None, password=None, **kwargs):
        try:
            user = Coordinaciones.objects.get(username=username)
            if user.check_password(password):
                return user
        except Coordinaciones.DoesNotExist:
            return None

    def get_user(self, user_id):
        try:
            return Coordinaciones.objects.get(pk=user_id)
        except Coordinaciones.DoesNotExist:
            return None
