from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from django.urls import reverse

def index(request):
    context = {}
    return render(request, 'login/index.html', context)

def log_in(request):
		print(request.POST['username'])	
		return HttpResponseRedirect(reverse('home:index'))

def register(request):
		print(request.POST['username'])
		return HttpResponseRedirect(reverse('home:index'))
