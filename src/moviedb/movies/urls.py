from django.conf.urls import url

from . import views

app_name = 'movies'

urlpatterns = [
	url(r'^$', views.index, name='index'),
  url(r'^filters/$', views.filters, name='filters'),
	url(r'^(?P<mid>[0-9]+)/$', views.detail, name='detail'),
]
