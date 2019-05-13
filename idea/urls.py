"""idea URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/dev/topics/http/urls/
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
from django.urls import path
from django.urls import include
from django.conf import settings
from django.conf.urls.static import static
from django.views.generic import RedirectView

from django.contrib.auth import views


from django.urls import reverse_lazy

admin.autodiscover()

urlpatterns = [
    path('admin/', admin.site.urls), #Administrador
    #path('', RedirectView.as_view(url='apps/inicio/', permanent=True)), # Index


  path('login/', views.LoginView.as_view(), name='login'),
  path('cerrar/', views.logout_then_login, name='logout'),



]

urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
