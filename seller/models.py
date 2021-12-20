from django.db import models


class Seller(models.Model):
    username = models.CharField(max_length=29, unique=True)
    password = models.CharField(max_length=20, unique=True)
    email = models.EmailField(max_length=100)
    name = models.CharField(max_length=100, default='empty', null=True)
    lastname = models.CharField(max_length=100, default='empty', null=True)
    country = models.CharField(max_length=25, default='empty', null=True)
    dateOfBirth = models.DateField(
        auto_now=False, auto_now_add=False, default='empty', null=True)
    address = models.TextField(max_length=254, default='empty', null=True)
    rfc = models.CharField(max_length=20, default="empty")
    ine = models.CharField(max_length=20, default="empty")
    CLABE = models.CharField(max_length=30, default="empty")

    def __str__(self):
        return self.username+' '+self.email+' '+self.name+' '+self.lastname
