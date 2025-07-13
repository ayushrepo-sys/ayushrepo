
from django.urls import path
from faculty.views import  fhome,viewquestion,addquestion,addsubject,addchapter,submitQuestion,updateQuestion,deleteQuestion



urlpatterns = [
 
    path('fhome',fhome,name="fhome"),
    # path('fprofile',fprofile,name="fprofile"),
    # path('fviewprofile',fviewprofile,name="fviewprofile"),


    path('viewquestion',viewquestion,name='viewquestion'),
    path('addsubject',addsubject,name='addsubject'),
    path('addchapter',addchapter,name='addchapter'),
    path('submitQuestion',submitQuestion,name='submitQuestion'),
    path('addquestion',addquestion,name='addquestion'),
    #  path("viewquestion/", viewquestion, name="viewquestion"),
    path("updateQuestion/", updateQuestion, name="updateQuestion"),
    path("deleteQuestion/", deleteQuestion, name="deleteQuestion"),

]
