from django.db import models

class Movie(models.Model):
  id = models.AutoField(primary_key=True)
  title = models.CharField(max_length=20)
  genre = models.CharField(max_length=20)
  release = models.DateField('date released')
  language = models.CharField(max_length=20)
  duration = models.DurationField()
  summary = models.CharField(max_length=256)

class User(models.Model):
  GENDER_CHOICES = (
    ('M', 'Male'),
    ('F', 'Female'),
  )

  first_name = models.CharField(max_length=20)
  middle_name = models.CharField(max_length=20)
  last_name = models.CharField(max_length=20)
  username = models.CharField(max_length=20)
  dob = models.DateField('date released')
  gender = models.CharField(max_length=1, choices=GENDER_CHOICES)
  is_admin = models.BooleanField(default=False)
