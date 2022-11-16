from django.http import HttpResponse, JsonResponse
from rest_framework.decorators import api_view
from rest_framework.parsers import JSONParser


from .serializers import *
from .models import *


#Eidhseis
@api_view(['GET'])
def listEidhseis(request):
   queryset = Eidhsh.objects.all()
   serializers = EidhshSerializer(queryset,many=True)
   return JsonResponse(serializers.data,safe=0)

@api_view(['GET'])
def listEidhseisByState(request,arg):
   queryset = Eidhsh.objects.filter(statename=arg)
   serializers = EidhshSerializer(queryset,many=True)
   return JsonResponse(serializers.data,safe=0)
@api_view(['PUT'])
def addEidhsh(request):
   serializer = EidhshSerializer(data = request.data)
   if serializer.is_valid():
      serializer.save()
      return JsonResponse(serializer.data)
   return JsonResponse(serializer.errors)

@api_view(['POST'])
def updateEidhsh(request,arg):
   obj = Eidhsh.objects.get(id =arg)
   serializer = EidhshSerializer(obj,data = request.data,partial=1)
   if serializer.is_valid():
      serializer.save()
   return JsonResponse([serializer.data],safe=0)


@api_view(['GET'])
def ypobolhEidhsh(request,arg):
   obj = Eidhsh.objects.get(id = arg)
   obj.statename=Katastash.objects.get(name="ypobeblhmenh")
   serializer = EidhshSerializer(obj ,data=request.data,partial=1)
   if serializer.is_valid():
      serializer.save()
      print("saved")
   print("not saved")
   return JsonResponse(serializer.data)

@api_view(['GET'])
def apodoxhEidhsh(request,arg):
   obj = Eidhsh.objects.get(id = arg)
   obj.statename=Katastash.objects.get(name="egkekrimenh")
   serializer = EidhshSerializer(obj ,data=request.data,partial=1)
   if serializer.is_valid():
      serializer.save()
      print("saved")
   print("not saved")
   return JsonResponse(serializer.data)

@api_view(['GET'])
def denyEidhsh(request,arg):
   obj = Eidhsh.objects.get(id = arg)
   obj.statename=Katastash.objects.get(name="mhApodekth")
   serializer = EidhshSerializer(obj ,data=request.data,partial=1)
   if serializer.is_valid():
      serializer.save()
      print("saved")
   print("not saved")
   return JsonResponse(serializer.data)

@api_view(['GET'])
def publishEidhsh(request,arg):
   obj = Eidhsh.objects.get(id = arg)
   obj.statename=Katastash.objects.get(name="dhmosieumenh")
   serializer = EidhshSerializer(obj ,data=request.data,partial=1)
   if serializer.is_valid():
      serializer.save()
      print("saved")
   print("not saved")
   return JsonResponse(serializer.data)

@api_view(['GET'])
def showEidhsh(request,arg):
   obj = Eidhsh.objects.get(id = arg)
   serializer = EidhshSerializer(obj ,data=request.data)
   serializer.is_valid()
   return JsonResponse(serializer.data)

@api_view(['GET'])
def searchEidhsh(request,arg1,arg2):
   obj = Eidhsh.objects.get(title = arg1,description=arg2)
   serializer = EidhshSerializer(obj ,data=request.data)
   serializer.is_valid()
   return JsonResponse(serializer.data)
# COMMENTS _________+++++++++++++++++++++++++++++++++++++++++++++___________COMMENTS
@api_view(['PUT'])
def addComment(request,arg,**kwargs):
   serializer = SxolioSerializer(data = request.data)
   if serializer.is_valid():
      serializer.save()
    
   serializer2 = SxolioEidhshsSerializer(data=request.data)
   obj = Sxolio.objects.order_by().last()
   
   sx=Sxolioeidhshs(eid=Eidhsh.objects.get(id=arg),sid=obj)
   
   if serializer2.is_valid():
      sx.save()
      serializer2.save()
   return JsonResponse(serializer.errors)

@api_view(['POST'])
def updateComment(request,arg):
   obj = Sxolio.objects.get(id =arg)
   serializer = SxolioSerializer(obj,data = request.data,partial=1)
   if serializer.is_valid():
      serializer.save()
   return JsonResponse([serializer.data],safe=0)

@api_view(['GET'])
def acceptComment(request,arg):
   obj = Sxolio.objects.get(id = arg)
   obj.katastash=KatSxoliou.objects.get(name="egkekrimeno")
   serializer = SxolioSerializer(obj ,data=request.data,partial=1)
   if serializer.is_valid():
      obj.save()
      serializer.save()
      print("saved")
   print("not saved")
   return JsonResponse(serializer.data)

@api_view(['GET'])
def rejectComment(request,arg):
   obj = Sxolio.objects.get(id = arg)
   obj.katastash=KatSxoliou.objects.get(name="diagrameno")
   serializer = SxolioSerializer(obj ,data=request.data,partial=1)
   if serializer.is_valid():
      serializer.save()
      print("saved")
   print("not saved")
   return JsonResponse(serializer.data)

@api_view(['GET'])
def listComments(request):
   queryset = Sxolio.objects.all()
   serializers = SxolioSerializer(queryset,many=True)
   return JsonResponse(serializers.data,safe=0)
#problem here
def listCommentsEidhshs(request,arg):
   queryset = Sxolioeidhshs.objects.filter(eid=arg).values_list('sid',flat=1)

   obj=Sxolio.objects.filter(id__in=queryset)
   serializers=SxolioSerializer(obj,many=1)
   return JsonResponse(serializers.data,safe=0)

#--------------------THEMATA--------------------------
@api_view(['GET'])
def listThemata(request):
   queryset = Thema.objects.all()
   serializers = ThemaSerializer(queryset,many=True)
   return JsonResponse(serializers.data,safe=0)

@api_view(['GET'])
def showThema(request,arg):
   obj = Thema.objects.get(id = arg)
   serializer = ThemaSerializer(obj ,data=request.data)
   serializer.is_valid()
   return JsonResponse(serializer.data)

@api_view(['PUT'])
def addThema(request):
   serializer = ThemaSerializer(data = request.data)
   if serializer.is_valid():
      serializer.save()
      return JsonResponse(serializer.data)
   return JsonResponse(serializer.errors)

@api_view(['POST'])
def updateThema(request,arg):
   obj = Thema.objects.get(id =arg)
   serializer = ThemaSerializer(obj,data = request.data,partial=1)
   if serializer.is_valid():
      serializer.save()
   return JsonResponse([serializer.data],safe=0)

@api_view(['GET'])
def apodoxhThematos(request,arg):
   obj = Thema.objects.get(id = arg)
   obj.statename=KatThematos.objects.get(name="egkekrimeno")
   serializer = ThemaSerializer(obj ,data=request.data,partial=1)
   if serializer.is_valid():
      serializer.save()
   return JsonResponse(serializer.data)

@api_view(['GET'])
def denyThema(request,arg):
   obj = Thema.objects.get(id = arg)
   obj.statename=KatThematos.objects.get(name="diagrameno")
   serializer = ThemaSerializer(obj ,data=request.data,partial=1)
   if serializer.is_valid():
      serializer.save()
   return JsonResponse(serializer.data)

@api_view(['GET'])
def searchThema(request,arg1):
   obj = Thema.objects.get(name = arg1)
   serializer = ThemaSerializer(obj ,data=request.data)
   serializer.is_valid()
   return JsonResponse(serializer.data)

@api_view(['GET'])
def associateThemaEidhsh(request):
   serializer = ThemaEidhshsSerializer(data = request.data)
   if serializer.is_valid():
      serializer.save()
      return JsonResponse(serializer.data)
   return JsonResponse(serializer.errors)
#PoblemHere
@api_view(['GET'])
def showEidhseisThematos(request,arg):
   qs = Themaeidhshs.objects.filter(id = arg).values_list('eid',flat=1)
   obj2 = Eidhsh.objects.filter(id__in=qs)
   serializer = EidhshSerializer(obj2,many=1)
   return JsonResponse(serializer.data,safe=0)