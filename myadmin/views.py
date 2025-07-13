from django.shortcuts import render,redirect
from Register.models import register_master,profile_update

# Create your views here.
def adashboard(request):
    return render(request,"dashboard.html")

def viewprofile(request):
    email=request.session.get('email')
    ob=register_master.objects.get(email=email)
    ob1=profile_update.objects.get(email=email)
    return render(request,'viewprofile.html',{"obj":ob,"data2":ob1})

def aprofile(request):
    email=request.session.get('email')
    ob=register_master.objects.get(email=email)
    ob1=profile_update.objects.get(email=email)
    if request.method == "POST":
        address=request.POST["address"]
        image_file = request.FILES['image']  
        doc_file = request.FILES['uploaded_doc'] 
        
        # Update the image in ProfileUpdate
        profile_update_obj, created = profile_update.objects.get_or_create(email=ob)
        if address:
            profile_update_obj.address = address
        if image_file:
            profile_update_obj.image = image_file
        
        if doc_file:
            profile_update_obj.upload_doc = doc_file
        
        profile_update_obj.save()
        
        ob.name = request.POST.get('name', ob.name)
        ob.mobile = request.POST.get('mobile', ob.mobile)
        ob.dob = request.POST.get('dob', ob.dob)
        ob.role = request.POST.get('role', ob.role)
        ob.save()
        
        return redirect('viewprofile') 
    return render(request,"aprofile.html",{"data1":ob,"data2":ob1})
def aupdate(request):
    if request.method=="POST":
        name=request.POST["name"]
        email=request.POST["email"]
        mobile=request.POST["mobile"]
        role=request.POST["role"]
        
        try:
            ob=register_master.objects.filter(email=email).update(name=name,mobile=mobile,role=role)
            obj=register_master.objects.all()
            return redirect("ahome")
        except Exception:
            return render("ahome.html")
            
    return render(request,"ahome.html")

def ahome(request):
    name=request.session.get('name')
    ob=register_master.objects.all()
    if request.method=="POST":
        email=request.POST["email"]
        btn=request.POST["btn"]
        if btn=="edit":
            ob2=register_master.objects.filter(email=email)
            return render(request,'aedit.html',{'output':ob2})
        if btn=="delete":
            ob1=register_master.objects.filter(email=email).delete()
            obj=register_master.objects.all()
            return render(request,"ahome.html",{'data':obj})

    return render(request,"ahome.html",{'data':ob,'aname':name})