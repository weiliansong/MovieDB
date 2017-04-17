from django.shortcuts import render
from django.http import HttpResponse

def index(request):
	# Need context here, grab movies
	context = {}
	return render(request, 'movies/index.html', context)
