from rest_framework import serializers
from .models import *


class BuyerSerializer(serializers.ModelSerializer):
    class Meta:
        model = Buyer
        fields = ['id', 'username', 'password', 'email',
                  'name', 'lastname', 'country', 'dateOfBirth', 'address']
        extra_kwargs = {
            'password': {'write_only': True}
        }