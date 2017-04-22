from django.conf.urls import url

from . import views

app_name = 'add_movie'

urlpatterns = [
	url(r'^$', views.index, name='index'),
	url(r'^manage_movie/', views.manage_movie, name='manage_movie'),
	url(r'^upgrade_user/', views.upgrade_user, name='upgrade_user'),
]
