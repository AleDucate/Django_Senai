from django.contrib import admin

from rh.models import Departamento, Funcionario

from .models import *
# Register your models here.
admin.site.register(Funcionario)
admin.site.register(Departamento)
admin.site.register(Cargo)
admin.site.register(NotaFiscal)
admin.site.register(ItemNotaFiscal)
admin.site.register(Empresa)
admin.site.register(FolhaPagamento)
admin.site.register(Ponto)