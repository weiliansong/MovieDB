from django.conf.urls import url

from . import views

app_name = 'login'

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^log_in/', views.log_in, name='log_in'),
    url(r'^register/', views.register, name='register'),
]
