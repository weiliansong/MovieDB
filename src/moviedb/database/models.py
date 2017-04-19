from django.db import models

class Movie(models.Model):
  id = models.AutoField(primary_key=True)
  title = models.CharField(max_length=20)
  genre = models.CharField(max_length=20)
  release = models.DateTimeField('date released')
  language = models.CharField(max_length=20)
  duration = models.DurationField()
  summary = models.CharField(max_length=256)
  did = models.ForeignKey(

class Role(models.Model):
