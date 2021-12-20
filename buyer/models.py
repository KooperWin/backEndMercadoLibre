from django.db import models


class Buyer(models.Model):
    username = models.CharField(max_length=29)
    password = models.CharField(max_length=20)
    email = models.EmailField(max_length=100, default='empty')
    name = models.CharField(max_length=100,default='empty')
    lastname = models.CharField(max_length=100,default='empty')
    country = models.CharField(max_length=25,default='empty')
    dateOfBirth = models.DateField(auto_now=False, auto_now_add=False,default='empty')
    address = models.TextField(max_length=254,default='empty')
    
    def __str__(self):
        return self.username+' '+self.email+' '+self.name+' '+self.lastname
