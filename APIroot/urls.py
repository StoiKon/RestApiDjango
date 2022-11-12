"""APIroot URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path,include
from restAPI.views import *

urlpatterns = [
    path('admin/', admin.site.urls),
    path('listEidhseis/', listEidhseis),
    path('listEidhseis/<str:arg>/', listEidhseisByState),
    path('addEidhsh/', addEidhsh),
    path('updateEidhsh/<int:arg>/', updateEidhsh),
    path('ypobolhEidhsh/<int:arg>/', ypobolhEidhsh),
    path('apodoxhEidhsh/<int:arg>/', apodoxhEidhsh),
    path('denyEidhsh/<int:arg>/', denyEidhsh),
    path('publishEidhsh/<int:arg>/', publishEidhsh),
    path('showEidhsh/<int:arg>/', showEidhsh),
    path('searchEidhsh/<str:arg1>/<str:arg2>/', searchEidhsh),
    path('addComment/<int:arg>/', addComment),
    path('updateComment/<int:arg>/', updateComment),
    path('acceptComment/<int:arg>/', acceptComment),
    path('rejectComment/<int:arg>/', rejectComment),
    path('listComments/', listComments),
    path('listCommentsEidhshs/<int:arg>/', listCommentsEidhshs),
    path('listThemata/', listThemata),
    path('showThema/<int:arg>/', showThema),
    path('addThema/', addThema),
    path('updateThema/<int:arg>/', updateThema),
    path('apodoxhThematos/<int:arg>/', apodoxhThematos),
    path('denyThema/<int:arg>/', denyThema),
    path('searchThema/<str:arg1>/', searchThema),
    path('associateThemaEidhsh/', associateThemaEidhsh),
    path('showEidhseisThematos/<str:arg>/', showEidhseisThematos),
]
