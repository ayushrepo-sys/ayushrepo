
from django.urls import path
from myadmin.views import ahome,aupdate,aprofile,viewprofile,adashboard



urlpatterns = [
 
    path('ahome',ahome,name="ahome"),
    path('aupdate',aupdate,name="aupdate"),
    path('aprofile',aprofile,name="aprofile"),
    path('viewprofile',viewprofile,name="viewprofile"),
    path('dashboard',adashboard,name="adashboard"),

]
