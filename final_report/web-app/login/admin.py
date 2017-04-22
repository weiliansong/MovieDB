from django.contrib import admin

from .models import Username, Password

admin.site.register(Username)
admin.site.register(Password)
