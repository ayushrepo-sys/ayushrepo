from django.shortcuts import render,redirect
from Register.models import register_master 

# Create your views here.
def viewdata(request):
    ob=register_master.objects.all()
    
    return render(request,'viewdata.html',{'data':ob})
def login(request):
    if request.method=="POST":
        email=request.POST["email"]
        pwd=request.POST["pwd"]
        try:
            ob=register_master.objects.get(email=email,password=pwd)
            request.session["name"]=ob.name
            request.session["email"]=ob.email
            request.session['mobile']=ob.mobile
            request.session['gender']=ob.gender
            request.session['role']=ob.role
            if ob.status==1:         

                if ob.role=="student":
                    return redirect('shome')
                elif ob.role=="admin":
                    return redirect('ahome')
                elif ob.role=='faculty':
                    return redirect('fhome')
                elif ob.role=='staff':
                    return redirect('staffhome')
                else:    
                    return redirect('login')    
            elif ob.status==0:
                return render(request,"login.html",{"msg":"Waiting for admin conformation!!!!!!"})    
            
                        
        except Exception as e:
            return render(request,"login.html",{"msg":"invalid userid & pwd.... " + str(e)})

        
    return render(request,"login.html")