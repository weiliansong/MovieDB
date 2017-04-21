from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from django.urls import reverse

from database.models import *

def index(request):
  current_user = Status.objects.all()

  if not current_user:
    context = {
      'auth_message' : 'Please login first',
    }
    return render(request, 'login/index.html', context)

  current_user = current_user[0].logged_username
  current_user = User.objects.all().filter(username=current_user)[0]

  if not current_user:
    context = {
      'auth_message' : 'Please login first',
    }
    return render(request, 'login/index.html', context)

  favorites = Favorites.objects.all().filter(uid=current_user.id)
  favorites = [x.mid for x in favorites]
  favorites = Movie.objects.all().filter(mid__in=favorites)

  container = []

  for movie in favorites:
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
    instance.append(movie.img_url)

    container.append(instance)

  context = {
    'movies' : container,
    'username' : 'Hello, %s %s' % (current_user.first_name, current_user.last_name),
    'is_admin' : current_user.is_admin,
  }

  return render(request, 'favorites/index.html', context)

def del_favorite(request, mid):
  current_user = Status.objects.all()
  current_user = current_user[0].logged_username
  current_user = User.objects.all().filter(username=current_user)[0]

  favorites = Favorites.objects.get(mid=mid, uid=current_user.id)
  favorites.delete()

  return HttpResponseRedirect(reverse('favorites:index'))
