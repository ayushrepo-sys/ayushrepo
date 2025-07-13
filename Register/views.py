from django.shortcuts import render,redirect

from .models import register_master, profile_update
from django.core.exceptions import ObjectDoesNotExist




from django.shortcuts import render
from .models import register_master, profile_update
from django.core.exceptions import ObjectDoesNotExist

def viewprofile(request):
    email = request.session.get('email')
    try:
        user = register_master.objects.get(email=email)
        profile = profile_update.objects.get(email=email)
    except ObjectDoesNotExist:
        user = None
        profile = None

    # Determine the home URL based on the user's role
    if user:
        if user.role == 'student':
            home_url = '/student/shome'  # Student homepage
        elif user.role == 'faculty':
            home_url = '/faculty/fhome'  # Faculty homepage
        elif user.role == 'staff':
            home_url = '/staff/staffhome'  # Staff homepage
        else:
            home_url = '/'  # Fallback homepage if role is not recognized
    else:
        home_url = '/'  # Fallback homepage if user is not found

    return render(request, 'viewprofile.html', {
        'user': user,
        'profile': profile,
        'home_url': home_url
    })


def profile(request):
    email=request.session.get('email')
    ob=register_master.objects.get(email=email)
    # ob1=profile_update.objects.get(email=email)
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
    return render(request,"profile.html",{"data1":ob})
    # return render(request,"fprofile.html")
def register(request):
    if request.method=="POST":
        name=request.POST["name"]
        email=request.POST["email"]
        mobile=request.POST["mobile"]
        pwd=request.POST["password"]
        gender=request.POST["gender"]
        dob=request.POST["dob"]
        role=request.POST["role"]
        ob=register_master.objects.create(name=name,mobile=mobile,email=email,password=pwd,gender=gender,dob=dob,role=role)
        ob.save()
        return render(request,"register.html",{"result":"register sucessfull...."})

    return render(request,'register.html')