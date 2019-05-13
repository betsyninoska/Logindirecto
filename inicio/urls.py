from django.conf.urls import  url
from .views import inicio

from django.contrib.auth import views
from django.urls import path

urlpatterns = [
    #url(r'^$', views.index, name='index'), #Inicio o index
   	
   #url(r'^$' , 'django.contrib.auth.views.LoginView'),
   # url(r'^$', 'idea.apps.inicio', name='inicio'),
   #url(r'^$' , 'django.contrib.auth.views.login',{'template_name':'inicio/index.html'}, name='login'),



]
