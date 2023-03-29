from django.http import HttpResponse
from django.shortcuts import render
#from .models import testtb
from django.shortcuts import redirect
# FILE UPLOAD AND VIEW
from  django.core.files.storage import FileSystemStorage
# SESSION
from django.conf import settings
from .models import *



def index(request):
    return render(request,'index.html')
    
    
    
def addstudent(request):
    if request.method == 'POST':
        name=request.POST.get('name')
        email=request.POST.get('email')
        password=request.POST.get('password')
        address=request.POST.get('address')
        phone=request.POST.get('phone')
        # POST, generate bound form with data from the request
        user=student(name=name,email=email,password=password,address=address,phone=phone)
        user.save()
        return render(request,'register.html')
        
        
        
def addregg(request):
    return render(request,'register.html')
 



def logint(request):
    email = request.POST.get('email')
    password = request.POST.get('password')
    if email == 'admin@gmail.com' and password == 'admin':
        request.session['userdetail'] = email
        request.session['user'] = 'admin'
        return render(request, 'admin/index.html')

    elif student.objects.filter(email=email,password=password).exists():
        userdetail=student.objects.get(email=email, password=password)
        if userdetail.password == request.POST['password']:
            request.session['uid'] = userdetail.id
            request.session['uname'] = userdetail.name

            request.session['uemail'] = email

            request.session['user'] = 'user'

            
            return render(request, 'user.html')
    

    else:
        return render(request, 'index.html', {'status': 'failed'})  
        
        

def login(request):
    return render(request,'login.html')
    
def userlog(request):
    return render(request,'user.html')
        
    
    
    