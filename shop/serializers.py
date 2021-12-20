from rest_framework import serializers
from .models import *


class ProductSerializer(serializers.ModelSerializer):
    class Meta:
        model = Product
        fields = ['id', 'name', 'description', 'size',
                  'brandNew', 'inMlStorage', 'stock', 'price', 'imgUrl', 'date', 'categorie']


class PurchaseSerializer(serializers.ModelSerializer):
    class Meta:
        model = Purchase
        fields = ['id', 'buyer', 'purchase_id', 'product', 'seller',
                  'paymentMethod', 'isDetained', 'isReported', 'date']


class ReportSerializer(serializers.ModelSerializer):
    class Meta:
        model = Report
        fields = ['id', 'buyer', 'purchase',
                  'reportDescription', 'product', 'seller', 'date']

class CategorieSerializer(serializers.ModelSerializer):
    class Meta:
        model = Categorie
        fields = ['id','name','imgUrl']

class ReviewSerializer(serializers.ModelSerializer):
    class Meta:
        model = Review
        fields = ['id', 'buyer', 'purchase',
                  'reviewDescription', 'product', 'seller', 'calification', 'date']


class TicketSerializer(serializers.ModelSerializer):
    class Meta:
        model = Ticket
        fields = ['id', 'purchase', 'buyer', 'seller', 'date']
