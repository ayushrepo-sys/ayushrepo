from django.shortcuts import render,redirect
from Register.models import *
from django.http import JsonResponse
from myadmin.models import *
from .models import *
# Create your views here.
# def fviewprofile(request):
#     email=request.session.get('email')
#     ob=register_master.objects.get(email=email)
#     ob1=profile_update.objects.get(email=email)
#     return render(request,'fviewprofile.html',{"obj":ob,"data2":ob1})

# def fprofile(request):
#     email=request.session.get('email')
#     ob=register_master.objects.get(email=email)
#     # ob1=profile_update.objects.get(email=email)
#     if request.method == "POST":
#         address=request.POST["address"]
#         image_file = request.FILES['image']  
#         doc_file = request.FILES['uploaded_doc'] 
        
#         # Update the image in ProfileUpdate
#         profile_update_obj, created = profile_update.objects.get_or_create(email=ob)
#         if address:
#             profile_update_obj.address = address
#         if image_file:
#             profile_update_obj.image = image_file
        
#         if doc_file:
#             profile_update_obj.upload_doc = doc_file
        
#         profile_update_obj.save()
        
#         ob.name = request.POST.get('name', ob.name)
#         ob.mobile = request.POST.get('mobile', ob.mobile)
#         ob.dob = request.POST.get('dob', ob.dob)
#         ob.role = request.POST.get('role', ob.role)
#         ob.save()
        
#         return redirect('fviewprofile') 
#     return render(request,"fprofile.html",{"data1":ob})
#     # return render(request,"fprofile.html")




def fhome(request):
    name=request.session.get("name")
    email=request.session.get("email")

    obj=register_master.objects.get(email=email)
    ob=register_master.objects.filter(role='student')
    
    return render(request,"fhome.html",{"fname":name,'data1':ob,'data':obj})
 

from django.shortcuts import render, redirect, get_object_or_404
from django.http import JsonResponse
from .models import subject, chapter, question

def viewquestion(request):
    ob = subject.objects.all()
    ob1 = chapter.objects.all()
    ob2 = question.objects.all()
    
    return render(request, 'viewquestion.html', {'sub': ob, 'cpt': ob1, 'qsn': ob2})

def updateQuestion(request):
    if request.method == "POST":
        qid = request.POST.get("qid")
        subject_name = request.POST.get("subject_name")
        chapter_name = request.POST.get("chapter_name")
        q_text = request.POST.get("Question")
        opt1 = request.POST.get("option1")
        opt2 = request.POST.get("option2")
        opt3 = request.POST.get("option3")
        opt4 = request.POST.get("option4")
        answer = request.POST.get("answer")

        qsn = get_object_or_404(question, question_id=qid)
        qsn.subject_name = subject_name
        qsn.chapter_name = chapter_name
        qsn.Question = q_text
        qsn.option1 = opt1
        qsn.option2 = opt2
        qsn.option3 = opt3
        qsn.option4 = opt4
        qsn.answer = answer
        qsn.save()

        return JsonResponse({"status": "success"})
    
    return JsonResponse({"status": "error"}, status=400)

def deleteQuestion(request):
    if request.method == "POST":
        qid = request.POST.get("qid")
        question.objects.filter(question_id=qid).delete()
        return JsonResponse({"status": "success"})
    
    return JsonResponse({"status": "error"}, status=400)

def addsubject(request):
    if request.method=="POST":
        sub=request.POST["sub"]
        ob=subject.objects.create(subject_name=sub)
        ob.save()
        return render(request,'addsubject.html',{'msg':'subject add sucessfully'})
    return render(request,'addsubject.html')
def addchapter(request):
    ob=subject.objects.all()
    if request.method=="POST":
        sub_name=request.POST["sub_name"]
        subject_name=subject.objects.get(subject_name=sub_name)       
        cpt_name=request.POST["cpt_name"]
        ob1=chapter.objects.create(subject_name=subject_name,chapter_name=cpt_name)
        ob1.save()
        return render(request,"addchapter.html",{"msg":"addchapter sucessfully"})
    return render(request,"addchapter.html",{'subname':ob})
def addquestion(request):
    ob=subject.objects.all()
    if request.method=="POST":
        sub_name=request.POST['sub_name']
        try:
            subject_name = subject.objects.get(subject_name=sub_name)       
            ob=chapter.objects.filter(subject_name=subject_name)
            chapter_names = [chapter.chapter_name for chapter in ob]

            return JsonResponse({'data': {'cpt': chapter_names}})
        except subject.DoesNotExist:
            
            return JsonResponse({'data': {'cpt': []}})
    return render(request,'addquestion.html',context={'sub':ob})  
def submitQuestion(request):
    if request.method=="POST":
        a=request.POST["sub_name"]
        sub_name=subject.objects.get(subject_name=a)
        b=request.POST["cpt_name"]
        cpt_name=chapter.objects.get(chapter_name=b)
        qsn =request.POST["qsn"]
        opt1=request.POST["opt1"]
        opt2=request.POST["opt2"]
        opt3=request.POST["opt3"]
        opt4=request.POST["opt4"]
        answer=request.POST["answer"]
        ob=question.objects.create(subject_name=sub_name,chapter_name=cpt_name,Question=qsn,option1=opt1,option2=opt2,option3=opt3,option4=opt4,answer=answer)
        ob.save()
        return redirect("addquestion")

    return render(request,'addquestion.html')  
