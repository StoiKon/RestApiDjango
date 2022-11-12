from rest_framework import serializers

from restAPI.models import *

class EidhshSerializer(serializers.ModelSerializer):
   class Meta:
       model = Eidhsh
       fields = ('title', 'description', 'date', 'statename')

class KatThematosSerializer(serializers.ModelSerializer):
   class Meta:
       model = KatThematos
       fields = ('name')

class KatastashSerializer(serializers.ModelSerializer):
   class Meta:
       model = Katastash
       fields = ('name')

class SxolioSerializer(serializers.ModelSerializer):
   class Meta:
       model = Sxolio
       fields = ('description','date','creatorname','katastash')

class SxolioEidhshsSerializer(serializers.ModelSerializer):
   class Meta:
       model = Sxolioeidhshs
       fields = ('eid','sid')

class ThemaSerializer(serializers.ModelSerializer):
   class Meta:
       model = Thema
       fields = ('name','statename','hmeromhnia')

class ThemaEidhshsSerializer(serializers.ModelSerializer):
   class Meta:
       model = Themaeidhshs
       fields = ('eid','thid')

class XrhsthsSerializer(serializers.ModelSerializer):
   class Meta:
       model = Xrhsths
       fields = ('name','passw','fullname','role')

class KatSxoliou(serializers.ModelSerializer):
    class Meta:
       model = Sxolio
       fields = ('name')
   
