from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from django.urls import reverse

from database.models import Movie, User, Crew, Tags

def index(request):
	context = {}
	return render(request, 'add_movie/index.html', context)

def add_movie(request):
  title = request.POST['title']
  release = request.POST['release']
  # TODO Multiple genres
  genres = request.POST['genre']
  language = request.POST['language']
  duration = request.POST['duration']
  tags = request.POST['tags'].split(',')
  img_url = request.POST['img_url']
  summary = request.POST['summary']

  movie = Movie(title=title,
                genre=genres,
                release=release,
                language=language,
                duration=duration,
                summary=summary)
  movie.save()

  mid = movie.id

  for tag in tags:
    obj = Tags(mid=mid, tags=tag)
    obj.save()

  return HttpResponseRedirect(reverse('home:index'))
