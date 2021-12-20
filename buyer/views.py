from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.exceptions import AuthenticationFailed
from rest_framework.viewsets import ModelViewSet
from rest_framework.permissions import IsAuthenticated

from .serializers import *
from .models import *
from users.views import verify_token


class BuyerViewSet(ModelViewSet):

    queryset = Buyer.objects.all()
    serializer_class = BuyerSerializer


class BuyerView(APIView):
    def get(self, request):

        buye = Buyer.objects.all()
        serializer = BuyerSerializer(buye, many=True)
        return Response(serializer.data)

    def post(self, request):
        pass

    def delete(self, request):
        pass

    def put(self, request):
        pass

    def patch(self, request):
        pass
