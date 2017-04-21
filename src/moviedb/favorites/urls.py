from django.conf.urls import url

from . import views

app_name = 'favorites'

urlpatterns = [
	url(r'^$', views.index, name='index'),
	url(r'^(?P<mid>[0-9]+)/del_favorite$', views.del_favorite, name='del_favorite'),
]
