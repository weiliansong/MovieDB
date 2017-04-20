from django.db import models

class Movie(models.Model):
  id = models.AutoField(primary_key=True)
  title = models.CharField(max_length=20)
  genre = models.CharField(max_length=20)
  release = models.IntegerField('year released')
  language = models.CharField(max_length=20)
  duration = models.IntegerField()
  summary = models.CharField(max_length=256)

class User(models.Model):
  GENDER_CHOICES = (
    ('M', 'Male'),
    ('F', 'Female'),
  )

  first_name = models.CharField(max_length=20)
  middle_name = models.CharField(max_length=1)
  last_name = models.CharField(max_length=20)
  username = models.CharField(max_length=20)
  dob = models.DateField('date released')
  gender = models.CharField(max_length=1, choices=GENDER_CHOICES)
  is_admin = models.BooleanField(default=False)
  password = models.CharField(max_length=20, default='')

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
  review = models.CharField(max_length=256)

class Tags(models.Model):
  mid = models.IntegerField()
  tags = models.CharField(max_length=20)
