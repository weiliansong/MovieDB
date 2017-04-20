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

    db = MySQLdb.connect(host='localhost',
                         user='moviedb_user',
                         passwd='moviedb_user',
                         db='moviedatabase')
    cur = db.cursor()
    cur.execute('select username from user')
    queries = cur.fetchall()

    for q in queries:
      if q_username in q:
        return HttpResponseRedirect(reverse('home:index'))

    return render(request, 'login/index.html', {
        'auth_message': 'Wrong login',
    })

# Checks to make sure the user is not registered already
def register(request):
    q_username = request.POST['username']
    q_password = request.POST['password']

    db = MySQLdb.connect(host='localhost',
                         user='moviedb_user',
                         passwd='moviedb_user',
                         db='moviedatabase')
    cur = db.cursor()
    cur.execute('select username from user')
    queries = cur.fetchall()

    for q in queries:
      if q_username in q:
        return render(request, 'login/index.html', {
            'register_message': 'Existing user',
    })

    return HttpResponseRedirect(reverse('home:index'))
