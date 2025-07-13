
from django.urls import path
from student.views import shome,exam, get_questions, evaluate 


urlpatterns = [
 
    path('shome',shome,name="shome"),
    path('exam',exam,name="exam"),
    path('get_questions', get_questions,name="get_questions"),
    path('evaluate/', evaluate , name = 'evaluate')
    
   
   

]
