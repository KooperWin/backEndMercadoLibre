from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.exceptions import AuthenticationFailed
from rest_framework.viewsets import ModelViewSet
from rest_framework.permissions import IsAuthenticated

from .serializers import *
from .models import *
from users.views import verify_token


class SellerViewSet(ModelViewSet):

    queryset = Seller.objects.all()
    serializer_class = SellerSerializer



class SellerView(APIView):
    def get(self, request):

        selle = Seller.objects.all()
        serializer = SellerSerializer(selle, many=True)
        return Response(serializer.data)

    def post(self, request):
        pass

    def delete(self, request):
        pass

    def put(self, request):
        pass

    def patch(self, request):
        pass
