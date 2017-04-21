from django.conf.urls import url

from . import views

app_name = 'favorites'

urlpatterns = [
	url(r'^$', views.index, name='index'),
	url(r'^(?P<uid>[0-9]+)/$', views.detail, name='detail'),
	url(r'^(?P<uid>[0-9]+)/add_favorite$', views.add_favorite, name='add_favorite'),
	url(r'^(?P<uid>[0-9]+)/del_favorite$', views.del_favorite, name='del_favirote'),
]
