from django.db import models
from django.core.validators import MaxValueValidator, MinValueValidator
from buyer.models import Buyer
from seller.models import Seller

class Categorie(models.Model):
    name = models.CharField(max_length=244)
    imgUrl = models.TextField()

    def __str__(self):
        return self.name

class Product(models.Model):
    name = models.CharField(max_length=254)
    description = models.TextField()
    size = models.CharField(max_length=100)
    brandNew = models.BooleanField(default=True)
    inMlStorage = models.BooleanField(default=False)
    stock = models.PositiveIntegerField()
    price = models.DecimalField(max_digits=20, decimal_places=2)
    date = models.DateField(auto_now=False, auto_now_add=False)
    imgUrl = models.TextField(max_length=254, null=True, default="Empty")
    categorie = models.ForeignKey(Categorie,max_length=254, null=True, default=1, on_delete=models.DO_NOTHING)

    def __str__(self):
        return self.name+' '+self.description+' '+self.size+' '+self.brandNew+' '+self.inMlStorage+' '+self.stock+' '+self.price + ''+self.imgUrl


class Purchase(models.Model):

    class Payment_Methods(models.TextChoices):
        DEBITCARD = "DEBIT CARD"
        OXXO = "OXXO"
        CREDITCARD = "CREDIT CARD"

    buyer = models.ForeignKey(Buyer, on_delete=models.DO_NOTHING)
    purchase_id = models.CharField(max_length=30)
    product = models.ForeignKey(Product, on_delete=models.DO_NOTHING)
    seller = models.ForeignKey(Seller, on_delete=models.DO_NOTHING)
    paymentMethod = models.TextField(max_length=35,
                                     choices=Payment_Methods.choices, default=Payment_Methods.DEBITCARD)
    isDetained = models.BooleanField(default=False)
    isReported = models.BooleanField(default=False)
    date = models.DateField(auto_now=False, auto_now_add=False)

    def __str__(self):
        return self.buyer+' '+self.purchase_id+' '+self.product+' '+self.seller+' '+self.paymentMethod+' '+self.isDetained+' '+self.isReported


class Report(models.Model):
    buyer = models.ForeignKey(Buyer, on_delete=models.DO_NOTHING)
    purchase = models.ForeignKey(Purchase, on_delete=models.DO_NOTHING)
    reportDescription = models.TextField(max_length=254)
    product = models.ForeignKey(Product, on_delete=models.DO_NOTHING)
    seller = models.ForeignKey(Seller, on_delete=models.DO_NOTHING)
    date = models.DateField(auto_now=False, auto_now_add=False)

    def __str__(self):
        return self.buyer+' '+self.purchase+' '+self.reportDescription+' '+self.product+' '+self.seller+' '+self.date


class Review(models.Model):
    buyer = models.ForeignKey(Buyer, on_delete=models.DO_NOTHING)
    purchase = models.ForeignKey(Purchase, on_delete=models.DO_NOTHING)
    reviewDescription = models.TextField(max_length=254)
    product = models.ForeignKey(Product, on_delete=models.DO_NOTHING)
    seller = models.ForeignKey(Seller, on_delete=models.DO_NOTHING)
    calification = models.PositiveIntegerField(
        default=5, validators=[MinValueValidator(1), MaxValueValidator(5)])
    date = models.DateField(auto_now=False, auto_now_add=False)

    def __str__(self):
        return self.buyer+' '+self.purchase+' '+self.reviewDescription+' '+self.product+' '+self.seller+' '+self.calification


class Ticket(models.Model):
    purchase = models.ForeignKey(Purchase, on_delete=models.DO_NOTHING)
    buyer = models.ForeignKey(Buyer, on_delete=models.DO_NOTHING)
    seller = models.ForeignKey(Seller, on_delete=models.DO_NOTHING)
    date = models.DateField(auto_now=False, auto_now_add=False)

    def __str__(self):
        return self.purchase+' '+self.buyer+' '+self.seller+' '+self.date
