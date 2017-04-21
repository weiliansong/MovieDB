from django.conf.urls import url

from . import views

app_name = 'add_movie'

urlpatterns = [
	url(r'^$', views.index, name='index'),
	url(r'^manage_movie/', views.manage_movie, name='manage_movie'),
]
