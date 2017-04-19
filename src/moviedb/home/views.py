from django.shortcuts import render
from django.http import HttpResponse 
from django.template import loader

def index(request):
  # Display who is logged in here
	context = {}
	return render(request, 'home/index.html', context)
