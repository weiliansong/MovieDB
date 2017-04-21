from django.shortcuts import render
from django.http import HttpResponse 
from django.template import loader

from database.models import Movie, Tags, Genres, Crew, Status, User

def index(request):
  current_user = Status.objects.all()

  if not current_user:
    context = {
      'auth_message' : 'Please login first',
    }
    return render(request, 'login/index.html', context)

  current_user = current_user[0].logged_username

  if not current_user:
    context = {
      'auth_message' : 'Please login first',
    }
    return render(request, 'login/index.html', context)

  # Display who is logged in here
  movies = Movie.objects.all()

  if len(movies) > 6:
    movies = movies[:6]

  container = []

  for movie in movies:
    instance = []
    instance.append(movie.mid)
    instance.append(movie.title)
    instance.append(movie.release)

    tags = Tags.objects.all().filter(mid=movie.mid)
    genres = Genres.objects.all().filter(mid=movie.mid)
    actors = Crew.objects.all().filter(mid=movie.mid, role='actor')
    
    tags   = ','.join([x.tags for x in tags])
    genres = ','.join([x.genres for x in genres])
    actors = ','.join([x.name for x in actors])

    instance.append(actors)
    instance.append(tags)
    instance.append(genres)

    container.append(instance)

  current_user = User.objects.all().filter(username=current_user)[0]

  context = {
    'movies' : container,
    'username' : current_user.username,
    'is_admin' : current_user.is_admin,
  }

  return render(request, 'home/index.html', context)
