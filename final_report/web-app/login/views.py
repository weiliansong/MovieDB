from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from django.urls import reverse

from database.models import User, Status

manager_password = '123456789'

def index(request):
  return render(request, 'login/index.html')

# Checks if username and password are both correct
def auth(request):
  q_username = request.POST['username']
  q_password = request.POST['password']

  user = User.objects.all().filter(username=q_username)

  if user:

    if user[0].password == q_password:
      status = Status.objects.all()

      if status:
        status = status[0]
        status.logged_username = q_username
        status.save()

      else:
        status = Status(logged_username=q_username)
        status.save()

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
  q_confirm = request.POST['password-confirm']

  if q_password != q_confirm:
    return render(request, 'login/index.html', {
        'register_message': 'Password confirm failed',
    })

  q_fname = request.POST['fname']
  q_mname = request.POST['mname']
  q_lname = request.POST['lname']
  q_dob = request.POST['dob']
  q_gender = request.POST['gender']
  q_manager = request.POST['password-manager'] == manager_password

  user = User.objects.all().filter(username=q_username)

  if user:
    return render(request, 'login/index.html', {
        'register_message': 'Existing user',
    })

  new_user = User(first_name=q_fname,
                  middle_name=q_mname,
                  last_name=q_lname,
                  username=q_username,
                  dob=q_dob,
                  gender=q_gender,
                  is_admin=q_manager,
                  password=q_password)
  new_user.save()

  if q_manager:
    return render(request, 'login/index.html', {
        'register_message': 'Registered manager user',
    })
  else:
    return render(request, 'login/index.html', {
        'register_message': 'Registered regular user',
    })

def logout(request):
  status = Status.objects.all()

  if status:
    status = status[0]
    status.logged_username = '' 
    status.save()

  else:
    status = Status(logged_username='')
    status.save()

  return HttpResponseRedirect(reverse('login:index'))
