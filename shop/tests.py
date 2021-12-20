from django.test import TestCase
from .models import *

class ProductModelTests(TestCase):
	def test_shop_name(self):
		new_shop = Product(name='My Product')
		print(new_shop)
		self.assertIs(str(new_shop), 'My Product')