from django.shortcuts import render
from django.http import HttpResponse 
from django.template import loader

from database.models import Movie

def index(request):
  # Display who is logged in here
  movies = Movie.objects.all()
  context = {
    'movies' : movies
  }
  return render(request, 'home/index.html', context)
