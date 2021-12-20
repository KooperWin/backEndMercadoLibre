from rest_framework import serializers
from .models import *


class SellerSerializer(serializers.ModelSerializer):
    class Meta:
        model = Seller
        fields = ['id', 'username', 'email', 'password', 'name', 'lastname',
                  'country', 'dateOfBirth', 'address', 'rfc', 'ine', 'CLABE']
        extra_kwargs = {
            'password': {'write_only': True}
        }
