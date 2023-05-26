from django.contrib.auth.backends import ModelBackend
from capcursapp.models import Coordinaciones

class CoordinacionesBackend(ModelBackend):
    def authenticate(self, request, username=None, password=None, **kwargs):
        print('Username:', username)
        print('Password:', password)

        try:
            user = Coordinaciones.objects.get(username=username)
            print('EL user dentro del try backends:', user)
        except Coordinaciones.DoesNotExist:
            print('Pasa al except, no hay ese user y por eso devuelve none')
            return None

        if user.check_password(password):
            print('EL exito!!')
            return user

        return None

