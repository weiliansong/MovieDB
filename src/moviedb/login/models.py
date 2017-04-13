from django.db import models

class Username(models.Model):
    username_text = models.CharField(max_length=20)

    def __str__(self):
        return 'username'

class Password(models.Model):
    password_text = models.CharField(max_length=20)

    def __str__(self):
        return 'password'
