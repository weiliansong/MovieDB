import MySQLdb
from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from django.urls import reverse

from database.models import User

def index(request):
  return render(request, 'login/index.html')

# Checks if username and password are both correct
def auth(request):
  q_username = request.POST['username']
  q_password = request.POST['password']

  user = User.objects.all().filter(username=q_username)

  if user:
    if user.password == q_password:
      return HttpResponseRedirect(reverse('home:index'))
    else:
      return render(request, 'login/index.html', {
          'auth_message': 'Wrong login',
      })
  else:
    return render(request, 'login/index.html', {
        'auth_message': 'Unknown user',
    })



# Checks to make sure the user is not registered already
def register(request):
  q_username = request.POST['username']
  q_password = request.POST['password']

  user = User.objects.all().filter(username=q_username)

  if user:
    return render(request, 'login/index.html', {
        'register_message': 'Existing user',
    })

  new_user = User(
