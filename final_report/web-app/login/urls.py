from django.conf.urls import url

from . import views

app_name = 'login'

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^auth/', views.auth, name='auth'),
    url(r'^logout/', views.logout, name='logout'),
    url(r'^register/', views.register, name='register'),
]
