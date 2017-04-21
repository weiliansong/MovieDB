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
    'username' : 'Hello, %s %s' % (current_user.first_name, current_user.last_name),
    'is_admin' : current_user.is_admin,
  }

  return render(request, 'add_movie/index.html', context)

def upgrade_user(request):

  current_user = Status.objects.all()
  current_user = current_user[0].logged_username
  current_user = User.objects.all().filter(username=current_user)[0]

  upgrade_username = request.POST['upgrade_username']
  user = User.objects.all().filter(username=upgrade_username)
  if not user:
    context = {
      'username' : 'Hello, %s %s' % (current_user.first_name, current_user.last_name),
      'is_admin' : current_user.is_admin,
      'message' : '%s not found!' % upgrade_username,
    }

    return render(request, 'add_movie/index.html', context)

  user = user[0]
  user.is_admin = True
  user.save()

  context = {
    'username' : 'Hello, %s %s' % (current_user.first_name, current_user.last_name),
    'is_admin' : current_user.is_admin,
    'message' : '%s upgraded to manager!' % upgrade_username,
  }

  return render(request, 'add_movie/index.html', context)

def manage_movie(request):
  action = request.POST['action']

  if action == 'add':
    return add_movie(request)

  elif action == 'remove':
    return remove_movie(request)

  elif action == 'update': 
    return update_movie(request)

def add_movie(request):
  current_user = Status.objects.all()
  current_user = current_user[0].logged_username
  current_user = User.objects.all().filter(username=current_user)[0]

  title = request.POST['title']
  release = request.POST['release']
  genres = [x.strip() for x in request.POST['genre'].split(',')]
  language = request.POST['language']
  duration = request.POST['duration']
  film_crew = [x.strip() for x in request.POST['filmcrew'].split('|')]
  tags = [x.strip() for x in request.POST['tags'].split(',')]
  img_url = request.POST['img_url']
  summary = request.POST['summary']

  if Movie.objects.all().filter(title=title):
    context = {
      'username' : 'Hello, %s %s' % (current_user.first_name, current_user.last_name),
      'is_admin' : current_user.is_admin,
      'message' : '%s Added Already!' % title,
    }
    return render(request, 'add_movie/index.html', context)

  movie = Movie(title=title,
                release=release,
                language=language,
                duration=duration,
                summary=summary,
                img_url=img_url)
  movie.save()

  mid = movie.mid

  for tag in tags:
    obj = Tags(mid=mid, tags=tag.lower())
    obj.save()

  for genre in genres:
    obj = Genres(mid=mid, genres=genre.lower())
    obj.save()

  for pair in film_crew:
    tokens = [x.strip() for x in pair.split(',')]
    
    if len(tokens) != 2: continue 

    name, role = tokens
    obj = Crew(mid=mid, name=name, role=role.lower())
    obj.save()

  current_user = Status.objects.all()
  current_user = current_user[0].logged_username
  current_user = User.objects.all().filter(username=current_user)[0]

  context = {
    'username' : 'Hello, %s %s' % (current_user.first_name, current_user.last_name),
    'is_admin' : current_user.is_admin,
    'message' : '%s Added!' % title,
  }

  return render(request, 'add_movie/index.html', context)

def remove_movie(request):
  title = request.POST['title']

  movie = Movie.objects.all().filter(title=title)

  if not movie:
    context = {
      'username' : 'Hello, %s %s' % (current_user.first_name, current_user.last_name),
      'is_admin' : current_user.is_admin,
      'message' : 'Movie not found to delete',
    }

    return render(request, 'add_movie/index.html', context)
  
  movie = movie[0]
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

  current_user = Status.objects.all()
  current_user = current_user[0].logged_username
  current_user = User.objects.all().filter(username=current_user)[0]

  context = {
    'username' : 'Hello, %s %s' % (current_user.first_name, current_user.last_name),
    'is_admin' : current_user.is_admin,
    'message' : '%s removed!' % title,
  }

  return render(request, 'add_movie/index.html', context)

def update_movie(request):
  current_user = Status.objects.all()
  current_user = current_user[0].logged_username
  current_user = User.objects.all().filter(username=current_user)[0]

  title = request.POST['title']
  release = request.POST['release']
  genres = [x.strip() for x in request.POST['genre'].split(',')]
  language = request.POST['language']
  duration = request.POST['duration']
  film_crew = [x.strip() for x in request.POST['filmcrew'].split('|')]
  tags = [x.strip() for x in request.POST['tags'].split(',')]
  img_url = request.POST['img_url']
  summary = request.POST['summary']

  movie = Movie.objects.all().filter(title=title)

  if not movie:
    context = {
      'username' : 'Hello, %s %s' % (current_user.first_name, current_user.last_name),
      'is_admin' : current_user.is_admin,
      'message' : 'Movie not found to update',
    }

    return render(request, 'add_movie/index.html', context)
  
  movie = movie[0]
  mid = movie.mid

  old_tags = Tags.objects.all().filter(mid=mid)
  old_crew = Crew.objects.all().filter(mid=mid)
  old_review = Review.objects.all().filter(mid=mid)
  old_rating = Rating.objects.all().filter(mid=mid)
  old_genres = Genres.objects.all().filter(mid=mid)

  new_genres = False
  new_tags = False
  new_film_crew = False

  for genre in genres:
    if genre.strip() != '':
      new_genres = True
  for tag in tags:
    if tag.strip() != '':
      new_tags = True
  for crew in film_crew:
    if crew.strip() != '':
      new_film_crew = True

  def delete_all(things):
    for thing in things:
      thing.delete()

  if release:
    movie.release = release
  if language != '':
    movie.language = language
  if duration != '':
    movie.duration = duration
  if summary != '':
    movie.summary = summary
  if img_url != '':
    movie.img_url = img_url
  movie.save()
  if new_genres:
    delete_all(old_genres)
    for genre in genres:
      obj = Genres(mid=mid, genres=genre.lower())
      obj.save()
  if new_tags:
    delete_all(old_tags)
    for tag in tags:
      obj = Tags(mid=mid, tags=tag.lower())
      obj.save()
  if new_film_crew:
    delete_all(old_crew)
    for pair in film_crew:
      if pair:
        tokens = [x.strip() for x in pair.split(',')]
        
        if len(tokens) != 2: continue 

        name, role = tokens
        obj = Crew(mid=mid, name=name, role=role.lower())
        obj.save()

  context = {
    'username' : 'Hello, %s %s' % (current_user.first_name, current_user.last_name),
    'is_admin' : current_user.is_admin,
    'message' : '%s updated' % title,
  }

  return render(request, 'add_movie/index.html', context)
