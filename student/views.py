from django.shortcuts import render,redirect
from Register.models import register_master
from faculty.models import *
from django.http import JsonResponse, HttpResponse 
from .models import SubmitAnswer


def exam(request):
    ob=subject.objects.all()
    ob1=chapter.objects.all()
    ob2=question.objects.all()
    return render(request,'exam.html',context={'sub':ob,'cpt':ob1,'qsn':ob2})

def get_questions(request):
    if request.method == 'POST':
        sub_name = request.POST['sub_name']
        sub=subject.objects.get(subject_name=sub_name)
        cpt_name = request.POST['cpt_name']
        cpt=chapter.objects.get(chapter_name=cpt_name)
        questions = question.objects.filter(subject_name=sub, chapter_name=cpt)
        return render(request, 'question.html', {'questions': questions})
    return render(request, 'question.html')
def shome(request):
    name=request.session.get('name')
    email=request.session.get('email')
    ob=register_master.objects.get(email=email)
    return render(request,'shome.html',{'sname':name,'data':ob})

def evaluate ( request ) : 
    result = 0
    if request.method == 'POST' : 
         
        for qstn in request.POST :

            try :
               if question.objects.get( question_id = int(qstn) ). answer == request.POST [qstn] : 
                    # load this record in ans table ( sid , qid , ans )
                    result += 1      
            except : 
                pass

    return render (request,'success.html',{'result':result})
    
