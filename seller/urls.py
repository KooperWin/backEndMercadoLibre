from django.urls import path, include
from rest_framework import routers
from .views import *

router = routers.DefaultRouter()

# define the router path and viewset to be used
router.register(r'seller', SellerViewSet)
router.register(r'', SellerViewSet)

# URLS
urlpatterns = [
    path('', include(router.urls)),
    path('view', SellerView.as_view()),
]
