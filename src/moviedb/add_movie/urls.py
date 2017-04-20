from django.conf.urls import url

from . import views

app_name = 'add_movie'

urlpatterns = [
	url(r'^$', views.index, name='index'),
	url(r'^add_movie/', views.add_movie, name='add_movie'),
]
