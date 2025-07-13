from django.shortcuts import render
from django.shortcuts import HttpResponse

# to return through HttpResponse
def logout(request):
    return render(request,'index.html')  
def faq(request):
    return render(request,'faq.html')
    
def gallary(request):
    return render(request,'gallary.html')

def contact(request):
    return render(request,'contact.html')

def home(request):
    return render(request,'index.html') 
def about(request):
    return render(request,"about.html")





