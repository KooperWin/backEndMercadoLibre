from django.urls import path, include
from rest_framework import routers
from .views import *

router = routers.DefaultRouter()

# define the router path and viewset to be used
router.register(r'purchase', PurchaseViewSet)
router.register(r'report', ReportViewSet)
router.register(r'review', ReviewViewSet)
router.register(r'ticket', TicketViewSet)
router.register(r'product', ProductViewSet)
router.register(r'categorie', CategorieViewSet)

# URLS
urlpatterns = [
    path('', include(router.urls)),
    path('view', ProductView.as_view()),
]
