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

  if not current_user:
    context = {
      'auth_message' : 'Please login first',
    }
    return render(request, 'login/index.html', context)

  current_user = User.objects.all().filter(username=current_user)[0]

  context = {
    'username' : current_user.username,
    'is_admin' : current_user.is_admin,
  }

  return render(request, 'add_movie/index.html', context)

def manage_movie(request):
  action = request.POST['action']

  if action == 'add':
    add_movie(request)

  elif action == 'remove':
    remove_movie(request)

  elif action == 'update': 
    update_movie(request)

  return HttpResponseRedirect(reverse('home:index'))

def add_movie(request):
  title = request.POST['title']
  release = request.POST['release']
  genres = [x.strip() for x in request.POST['genre'].split(',')]
  language = request.POST['language']
  duration = request.POST['duration']
  film_crew = [x.strip() for x in request.POST['filmcrew'].split('|')]
  tags = [x.strip() for x in request.POST['tags'].split(',')]
  img_url = request.POST['img_url']
  summary = request.POST['summary']

  movie = Movie(title=title,
                release=release,
                language=language,
                duration=duration,
                summary=summary)
  movie.save()

  mid = movie.mid

  for tag in tags:
    obj = Tags(mid=mid, tags=tag.lower())
    obj.save()

  for genre in genres:
    obj = Genres(mid=mid, genres=genre.lower())
    obj.save()

  for pair in film_crew:
    name, role = [x.strip() for x in pair.split(',')]
    obj = Crew(mid=mid, name=name, role=role.lower())
    obj.save()

  return HttpResponseRedirect(reverse('home:index'))

def remove_movie(request):
  title = request.POST['title']

  movie = Movie.objects.all().filter(title=title)

  mid = movie.mid

  tags = Tags.objects.all().filter(mid=mid)
  crew = Crew.objects.all().filter(mid=mid)
  review = Review.objects.all().filter(mid=mid)
  rating = Rating.objects.all().filter(mid=mid)
  genres = Genres.objects.all().filter(mid=mid)

  def remove_entries(things):
    for thing in things:
      thing.delete()

  movie.delete()
  remove_entries(tags)
  remove_entries(crew)
  remove_entries(review)
  remove_entries(rating)
  remove_entries(genres)

  return HttpResponseRedirect(reverse('home:index'))
