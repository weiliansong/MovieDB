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

  # Display who is logged in here
  movies = Movie.objects.all()

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
    instance.append(movie.img_url)

    container.append(instance)

  current_user = User.objects.all().filter(username=current_user)[0]

  context = {
    'movies' : container,
    'username' : 'Hello, %s %s' % (current_user.first_name, current_user.last_name),
    'is_admin' : current_user.is_admin,
  }

  return render(request, 'movies/index.html', context)

def filters(request):
  crew = request.POST['crew']
  title = request.POST['title']
  release = request.POST['release']
  tags = request.POST['tags']
  genre = request.POST['genre']

  movies = Movie.objects.all()

  if crew:
    crew = Crew.objects.all().filter(name=crew)
    mid = [x.mid for x in crew]
    movies = movies.filter(mid__in=mid)
  if title:
    movies = movies.filter(title=title)
  if release:
    movies = movies.filter(release=release)
  if tags:
    tags = Tags.objects.all().filter(tags=tags)
    mid = [x.mid for x in tags]
    movies = movies.filter(mid__in=mid)
  if genre:
    genre = Genres.objects.all().filter(genres=genre)
    mid = [x.mid for x in genre]
    movies = movies.filter(mid__in=mid)

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
    instance.append(movie.img_url)
    instance.append(movie.duration)

    container.append(instance)

  current_user = Status.objects.all()
  current_user = current_user[0].logged_username
  current_user = User.objects.all().filter(username=current_user)[0]

  sort_by = request.POST['sort']

  if sort_by == 'title':
    container = sorted(container, key=lambda instance : instance[1])

  if sort_by == 'release':
    container = sorted(container, key=lambda instance : instance[2])

  if sort_by == 'duration':
    container = sorted(container, key=lambda instance : instance[7])

  context = {
    'movies' : container,
    'username' : 'Hello, %s %s' % (current_user.first_name, current_user.last_name),
    'is_admin' : current_user.is_admin,
  }

  return render(request, 'movies/index.html', context)

def detail(request, mid):
  movie = Movie.objects.get(mid=mid)
  tags = Tags.objects.all().filter(mid=mid)
  genres = Genres.objects.all().filter(mid=mid)
  crew = Crew.objects.all().filter(mid=mid)

  tags = [x.tags for x in tags]
  genres = [x.genres for x in genres]
  crew = [x.name for x in crew]

  tags = ', '.join(tags)
  genres = ', '.join(genres)
  crew = ', '.join(crew)

  avg_rating = 0
  ratings = Rating.objects.all().filter(mid=mid)

  if ratings:
    for rating in ratings:
      avg_rating += rating.rating
    avg_rating /= len(ratings)

  movie_info = []
  movie_info.append(movie.title)
  movie_info.append(crew)
  movie_info.append(movie.release)
  movie_info.append(genres)
  movie_info.append(movie.duration)
  movie_info.append(movie.language)
  movie_info.append(tags)
  movie_info.append(movie.summary)
  movie_info.append(avg_rating)
  movie_info.append(movie.img_url)

  review_info = []
  reviews = Review.objects.all().filter(mid=mid)

  for review in reviews:
    review_text = review.review
    uid = review.uid
    username = User.objects.get(id=uid).username
    rating = Rating.objects.get(mid=mid, uid=uid).rating
    review_info.append([username, rating, review_text])

  current_user = Status.objects.all()
  current_user = current_user[0].logged_username
  current_user = User.objects.all().filter(username=current_user)[0]

  context = {
    'mid' : movie.mid,
    'movie_info' : movie_info,
    'review_info' : review_info,
    'username' : 'Hello, %s %s' % (current_user.first_name, current_user.last_name),
    'is_admin' : current_user.is_admin,
  }

  return render(request, 'movies/movie.html', context)

def add_review(request, mid):
  current_user = Status.objects.all()
  current_user = current_user[0].logged_username
  current_user = User.objects.all().filter(username=current_user)[0]

  if Rating.objects.filter(mid=mid, uid=current_user.id):
    return HttpResponseRedirect(reverse('movies:index'))

  rating = Rating(mid=mid, uid=current_user.id, rating=int(request.POST['rating']))
  review = Review(mid=mid, uid=current_user.id, review=request.POST['review_text'])
  rating.save()
  review.save()

  return HttpResponseRedirect(reverse('movies:index'))

def add_favorite(request, mid):
  current_user = Status.objects.all()
  current_user = current_user[0].logged_username
  current_user = User.objects.all().filter(username=current_user)[0]

  favorite = Favorites(mid=mid, uid=current_user.id)
  favorite.save()

  return HttpResponseRedirect(reverse('movies:index'))
