import MySQLdb
from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from django.urls import reverse

def index(request):
    return render(request, 'login/index.html')

def log_in(request):
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
      else:
        print('Not found')

def register(request):
    print(request.POST['username'])
    return HttpResponseRedirect(reverse('home:index'))
