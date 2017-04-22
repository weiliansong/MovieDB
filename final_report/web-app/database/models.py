from django.db import models

class Movie(models.Model):
  mid = models.AutoField(primary_key=True)
  title = models.CharField(max_length=30)
  release = models.IntegerField('year released')
  language = models.CharField(max_length=30)
  duration = models.IntegerField()
  summary = models.CharField(max_length=256)
  img_url = models.CharField(max_length=256, default='')

class User(models.Model):
  first_name = models.CharField(max_length=30)
  middle_name = models.CharField(max_length=1)
  last_name = models.CharField(max_length=30)
  username = models.CharField(max_length=30)
  dob = models.CharField(max_length=10)
  gender = models.CharField(max_length=10)
  is_admin = models.BooleanField(default=False)
  password = models.CharField(max_length=30)

class Crew(models.Model):
  mid = models.IntegerField(Movie)
  name = models.CharField(max_length=30)
  role = models.CharField(max_length=30)

class Rating(models.Model):
  uid = models.IntegerField(User)
  mid = models.IntegerField(Movie)
  rating = models.IntegerField()

class Review(models.Model):
  uid = models.IntegerField(User)
  mid = models.IntegerField(Movie)
  review = models.CharField(max_length=1024)

class Tags(models.Model):
  mid = models.IntegerField()
  tags = models.CharField(max_length=30)

class Genres(models.Model):
  mid = models.IntegerField()
  genres = models.CharField(max_length=30)

class Status(models.Model):
  logged_username = models.CharField(max_length=30, default='')

class Favorites(models.Model):
  uid = models.IntegerField()
  mid = models.IntegerField()
