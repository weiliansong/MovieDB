from django.conf.urls import url

from . import views

app_name = 'movies'

urlpatterns = [
	url(r'^$', views.index, name='index'),
  url(r'^filters/$', views.filters, name='filters'),
	url(r'^(?P<mid>[0-9]+)/$', views.detail, name='detail'),
	url(r'^(?P<mid>[0-9]+)/add_review$', views.add_review, name='add_review'),
	url(r'^(?P<mid>[0-9]+)/add_favorite$', views.add_favorite, name='add_favorite'),
]
