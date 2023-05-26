from django import forms
from capcursapp.models import Capcurs, Imparegu, Coordinaciones

class CapcursForm(forms.ModelForm):
    class Meta:
        model = Capcurs
        #solo se listan los campos que se rellenan desde formulario.
        fields = ['cve_curso', 'cve_academic', 'aula', 'observaciones',
                  'lunes_ini', 'lunes_fin', 'martes_ini', 'martes_fin', 'miercoles_fin', 'miercoles_ini',
                  'jueves_ini', 'jueves_fin', 'viernes_fin', 'viernes_ini', 'aulap', 'observacionesp','lunes_inip',
                  'lunes_finp', 'martes_inip', 'martes_finp', 'miercoles_finp', 'miercoles_inip',
                  'jueves_inip', 'jueves_finp', 'viernes_finp', 'viernes_inip']


class ImpareguForm(forms.ModelForm):
    class Meta:
        model = Imparegu
        fields = ['cve_academic', 'cve_curso']


class CapcursFormEditar(forms.ModelForm):
    class Meta:
        model = Capcurs
        #solo se listan los campos que se rellenan desde formulario.
        fields = ['cve_curso', 'cve_academic', 'aula', 'observaciones',
                  'lunes_ini', 'lunes_fin', 'martes_ini', 'martes_fin', 'miercoles_fin', 'miercoles_ini',
                  'jueves_ini', 'jueves_fin', 'viernes_fin', 'viernes_ini', 'aulap', 'observacionesp','lunes_inip',
                  'lunes_finp', 'martes_inip', 'martes_finp', 'miercoles_finp', 'miercoles_inip',
                  'jueves_inip', 'jueves_finp', 'viernes_finp', 'viernes_inip']



class CoordinacionesForm(forms.ModelForm):
    class Meta:
        model = Coordinaciones
        fields = ['cont_veces', 'cont_final']