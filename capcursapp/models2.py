# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Academic(models.Model):
    id = models.BigAutoField(primary_key=True)
    cve_academic = models.CharField(max_length=6)
    nombres = models.CharField(max_length=50)
    apellidos = models.CharField(max_length=100)
    cve_sexo = models.CharField(max_length=9)
    cve_campus = models.CharField(max_length=3)
    cve_institu = models.CharField(max_length=3)
    cve_program = models.CharField(max_length=3)
    email = models.CharField(max_length=60)

    class Meta:
        managed = False
        db_table = 'academic'


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class Capcurs(models.Model):
    id = models.BigAutoField(primary_key=True)
    cve_program = models.CharField(max_length=3)
    nombre = models.CharField(max_length=120)
    nom_academic = models.CharField(max_length=50, blank=True, null=True)
    apellidos = models.CharField(max_length=100, blank=True, null=True)
    participacion = models.CharField(max_length=20)
    creditos = models.IntegerField()
    aula = models.CharField(max_length=100, blank=True, null=True)
    observaciones = models.CharField(max_length=120, blank=True, null=True)
    tiene_colab = models.IntegerField()
    tiene_practicas = models.IntegerField()
    cve_academic = models.ForeignKey(Academic, models.DO_NOTHING, db_column='cve_academic', to_field='cve_academic', blank=True, null=True)
    cve_curso = models.ForeignKey('Catacurs', models.DO_NOTHING, db_column='cve_curso', to_field='cve_curso')
    lunes_ini = models.TimeField(blank=True, null=True)
    lunes_fin = models.TimeField(blank=True, null=True)
    martes_ini = models.TimeField(blank=True, null=True)
    martes_fin = models.TimeField(blank=True, null=True)
    miercoles_fin = models.TimeField(blank=True, null=True)
    miercoles_ini = models.TimeField(blank=True, null=True)
    jueves_ini = models.TimeField(blank=True, null=True)
    jueves_fin = models.TimeField(blank=True, null=True)
    viernes_fin = models.TimeField(blank=True, null=True)
    viernes_ini = models.TimeField(blank=True, null=True)
    periodo = models.CharField(max_length=9)
    agno = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'capcurs'


class Catacurs(models.Model):
    id = models.BigAutoField(primary_key=True)
    cve_campus = models.CharField(max_length=3)
    cve_program = models.CharField(max_length=3)
    cve_curso = models.CharField(max_length=6)
    gpo_670 = models.CharField(max_length=2, blank=True, null=True)
    nombre = models.CharField(max_length=120)
    credimi = models.IntegerField()
    credima = models.IntegerField()
    vigente = models.CharField(max_length=2, blank=True, null=True)
    es_tecno = models.CharField(max_length=1, blank=True, null=True)
    periodo = models.CharField(max_length=9)
    agno = models.IntegerField()
    hay_credi = models.CharField(max_length=2, blank=True, null=True)
    hay_calif = models.CharField(max_length=2, blank=True, null=True)
    tipo = models.CharField(max_length=16)
    isevaluated = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'catacurs'


class Colaboradores(models.Model):
    id_capcurs = models.IntegerField()
    cve_curso = models.CharField(max_length=6)
    nom_curso = models.CharField(max_length=120)
    cve_academic = models.CharField(max_length=6)
    nom_academic = models.CharField(max_length=50)
    apellidos = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'colaboradores'


class Coordinaciones(models.Model):
    cve_campus = models.CharField(max_length=3)
    cve_posgrad = models.CharField(max_length=6)
    nom_posgra = models.CharField(max_length=60)
    cve_program = models.CharField(max_length=3)
    nom_program = models.CharField(max_length=50)
    username = models.CharField(max_length=50)
    password = models.CharField(max_length=50)
    cont_veces = models.IntegerField()
    cont_final = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'coordinaciones'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Horapractica(models.Model):
    id_capcurs = models.IntegerField()
    cve_curso = models.CharField(max_length=6)
    nom_curso = models.CharField(max_length=120)
    lunes_ini = models.TimeField()
    lunes_fin = models.TimeField()
    martes_ini = models.TimeField()
    martes_fin = models.TimeField()
    miercoles_ini = models.TimeField()
    miercoles_fin = models.TimeField()
    jueves_ini = models.TimeField()
    jueves_fin = models.TimeField()
    viernes_ini = models.TimeField()
    viernes_fin = models.TimeField()
    aula = models.CharField(max_length=100)
    observaciones = models.CharField(max_length=120)

    class Meta:
        managed = False
        db_table = 'horapractica'


class Imparegu(models.Model):
    num_emplea = models.BigIntegerField(primary_key=True)
    cve_academic = models.CharField(max_length=6)
    cve_curso = models.CharField(max_length=6)
    gpo_670 = models.CharField(max_length=2)
    periodo = models.CharField(max_length=9)
    agno = models.IntegerField()
    participa = models.CharField(max_length=11)
    registro = models.DateField()
    per_vi_cur = models.CharField(max_length=9)
    ano_vi_cur = models.IntegerField()
    dis_cre = models.FloatField()

    class Meta:
        managed = False
        db_table = 'imparegu'
