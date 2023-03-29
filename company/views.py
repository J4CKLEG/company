from django.http import HttpResponse
from django.shortcuts import render
#from .models import testtb
from django.shortcuts import redirect
# FILE UPLOAD AND VIEW
from  django.core.files.storage import FileSystemStorage
# SESSION
from django.conf import settings
from .models import*

def index(request):
    return render(request,'index.html')
def home(request):
    return render(request,'index.html')    
def studdash(request):
    return render(request,'student/index.html')
    
def viewprofile(request):
    a=request.session['uid']      
    sel=stud.objects.get(id=a)
    return render(request,'profile.html',{'result':sel})   
    
def viewstafp(request):
    a=request.session['sid']      
    sel=userreg.objects.get(id=a)
    return render(request,'staff/viewstaff.html',{'result':sel})    
        

def feedback(request):
    return render(request,'feedback.html')    

def dash(request):
    return render(request,'admin/index.html')

def staffdash(request):
    return render(request,'staff/index.html')  
    
def addstaff(request):
    user= intern.objects.all()
    return render(request,'admin/login.html',{'result':user}) 
    
def noteuploladstaff(request):
    a=request.session['sid']      
    sel=userreg.objects.get(id=a)

    return render(request,'staff/noteupload.html',{'result':sel})
    

    
'''def viewuser(request):
    user=student.objects.filter(status='pending')
    return render(request,'admin/user.html',{'result':user}) '''

def userview(request):
    sel=stud.objects.filter(status='pending')
    return render(request,'admin/user.html',{'result':sel})



def appapproved(request,id):
    sel=application.objects.get(id=id)
    a=sel.internshipname
    c=sel.studid
    d=sel.amount
    e=sel.date
    f=sel.phoneno

    status='approved'
    user=application(internshipname=a,studid=c,amount=d,date=e,phoneno=f,status=status,id=id)
    user.save()
    return redirect(viewstudapp)
    
def approved(request,id):
    sel=stud.objects.get(id=id)
    a=sel.name
    b=sel.address
    c=sel.qualification
    d=sel.pass_year
    e=sel.phone_no
    f=sel.username
    g=sel.password
    h=sel.email
    i=sel.image

    status='approved'
    user=stud(name=a,address=b,qualification=c,pass_year=d,phone_no=e,username=f,password=g,email=h,status=status,image=i,id=id)
    user.save()
    return redirect(userview)
  
def internships(request):
    return render(request,'admin/internship.html')  
    
def addmentor(request):
    if request.method=='POST':
        name=request.POST.get('name')
        email=request.POST.get('email')
        password=request.POST.get('password')
        username=request.POST.get('username')
        phoneno=request.POST.get('phoneno')
        course=request.POST.get('course')
        address=request.POST.get('address')
        image= request.FILES['f1']
        fs = FileSystemStorage()
        image=fs.save(image.name,image)
        login=userreg(Name=name,Email=email,password=password,user=username,phone_No=phoneno,Course=course,Address=address,image=image)
        login.save()   
        return render(request,'admin/login.html') 
  
def courses(request):
    if request.method=='POST':
        name=request.POST.get('name')
        amount=request.POST.get('amount')
        duration=request.POST.get('duration')
        vaccancy=request.POST.get('vaccancy')
        stipend=request.POST.get('stipend')
        postdate=request.POST.get('post date')
        lastdate=request.POST.get('last date')
        qualification=request.POST.get('qualification')
        description=request.POST.get('description')

        internship=intern(Name=name,Amount=amount,Duration=duration,Vaccancy=vaccancy,Stipend=stipend,post_date=postdate,last_date=lastdate,Qualification= qualification,Description=description)
        internship.save()
        return render(request,'admin/internship.html')  
         
    
def addstudent(request):
    if request.method == 'POST':
        name=request.POST.get('name')
        address=request.POST.get('address')
        qualification=request.POST.get('qualification')
        passyear=request.POST.get('pass_year')
        phoneno=request.POST.get('phone_no')
        username=request.POST.get('username')
        password=request.POST.get('password')
        email=request.POST.get('email')
        status='pending'
        image= request.FILES['image']
        fs = FileSystemStorage()
        image=fs.save(image.name,image)
        # POST, generate bound form with data from the request
        user=stud(name=name,address=address,qualification=qualification,pass_year=passyear,phone_no=phoneno,username=username,password=password,email=email,image=image,status=status)
        user.save()
        return render(request,'register.html',{'status':'Register Successfully'})
        
        
        
def addstd(request):
    return render(request,'register.html')
 

def logout(request):
    session_keys = list(request.session.keys())
    for key in session_keys:
        del request.session[key]
    return redirect(index) 


def logint(request):
    email = request.POST.get('email')
    password = request.POST.get('password')
    if email == 'admin@gmail.com' and password == 'admin':
        request.session['userdetail'] = email
        request.session['admin'] = 'admin'
        return render(request,'admin/index.html')

    elif stud.objects.filter(email=email,password=password,status='approved').exists():
        userdetail=stud.objects.get(email=email, password=password)
        if userdetail.password == request.POST['password']:
            request.session['uid'] = userdetail.id
            request.session['uname'] = userdetail.name

            request.session['uemail'] = email

            request.session['user'] = 'user'

            
            return render(request, 'index.html')
            
    elif userreg.objects.filter(Email=email,password=password).exists():
        userdetail=userreg.objects.get(Email=email, password=password)
        if userdetail.password == request.POST['password']:
            request.session['sid'] = userdetail.id
            request.session['sname'] = userdetail.Name

            request.session['semail'] = email

            request.session['user'] = 'user'

            
            return render(request, 'staff/index.html')
    

    else:
        return render(request, 'login.html', {'status': 'Invalid email or password'})  
        
        

def login(request):
    return render(request,'login.html')
    
def userlog(request):
    return render(request,'user.html')
    
def faculity(request):
    return render(request,'faculity.html')  
    
def internship(request):
    return render(request,'view internship.html') 
    
def notes(request):
    return render(request,'viewnote.html') 
    
def noteclass(request):
    return render(request,'staff/noteupload.html')
    
def noteuploadclass(request):
    if request.method == 'POST':
        staffid=request.POST.get('staffid')
        image= request.FILES['f1']
        fs = FileSystemStorage()
        image=fs.save(image.name,image)
        date=request.POST.get('date')
        internship=request.POST.get('internship')
        # POST, generate bound form with data from the request
        notesss=note(staffid=staffid,photo=image,date=date,internshipid=internship)
        notesss.save()
        return render(request,'staff/noteupload.html')
        
def onlineclasss(request):
    if request.method == 'POST':
        staffid=request.POST.get('staffid')
        link=request.POST.get('link')
        date=request.POST.get('date')
        internship=request.POST.get('internshipid')
        # POST, generate bound form with data from the request
        onlinecls=onliness(staffid=staffid,link=link,date=date,internshipid=internship)
        onlinecls.save()
        return render(request,'staff/online.html')
        


def certificatee(request):
    a=request.session['uname']      
    sel=application.objects.get(studid=a,status='approved')

    return render(request,'cerificate.html',{'result':sel}) 
def clsonline(request):
    a=request.session['sid']      
    sel=userreg.objects.get(id=a)

    return render(request,'staff/online.html',{'result':sel})    
    
def stftask(request):
    a=request.session['sid']      
    sel=userreg.objects.get(id=a)
    return render(request,'staff/task.html',{'result':sel})  

def stafftasks(request):
    if request.method == 'POST':
        staffid=request.POST.get('staffid')
        date=request.POST.get('date')
        internship=request.POST.get('internshipid')
        image= request.FILES['f1']

        fs=FileSystemStorage()
        image=fs.save(image.name,image)
        
        # POST, generate bound form with data from the request
        tasks=stafftask(staffid=staffid,photo=image,date=date,internshipid=internship)
        tasks.save()
        return render(request,'staff/task.html')    
        
        
def stafffsss(request):
    return render(request,'staff/noteupload.html')
    

        
def viewinternshipandapply(request):
    sel=intern.objects.all()
    return render(request,'comainternship.html',{'result':sel})
    
def faculityview(request):
    a=request.session['uname']
    sel=application.objects.get(studid=a,status='approved')
    b=sel.internshipname
    sell=userreg.objects.get(Course=b)

    return render(request,'faculity.html',{'result':sell})
    
def viewnote(request):
    a=request.session['uname']
    print(a)
    sel=application.objects.get(studid=a,status='approved')
    b=sel.internshipname
    print(b)
    sell=userreg.objects.get(Course=b)
    c=sell.Name
    print(c)
    sel3=note.objects.filter(staffid=c)
    return render(request,'viewnote.html',{'result':sel3})
    
    
def viewclass(request):
    a=request.session['uname']
    print(a)
    sel=application.objects.get(studid=a,status='approved')
    b=sel.internshipname
    print(b)
    sell=userreg.objects.get(Course=b)
    c=sell.Name
    print(c)
    sel3=onliness.objects.filter(staffid=c)  
    return render(request,'viewonlineclass.html',{'result':sel3})
    
def viewapplication(request):
    a=request.session['uname']
    print(a)
    sel=application.objects.filter(studid=a)
    return render(request,'viewapplication.html',{'result':sel})    

def taskuploads(request):
    a=request.session['uname']
    print(a)
    sel=application.objects.get(studid=a,status='approved')
    b=sel.internshipname
    print(b)
    sell=userreg.objects.get(Course=b)
    c=sell.Name
    print(c)
    return render(request,'tasksupload.html',{'result':sell}) 
    
def viewstudapp(request):
    sel=application.objects.filter(status='pending')
    return render(request,'admin/viewstudapplication.html',{'result':sel})    
 
    
def viewstudapp(request):
    sel=application.objects.filter(status='pending')
    return render(request,'admin/viewstudapplication.html',{'result':sel})    


def uploads(request):
    a=request.session['uname']

    if request.method == 'POST':
        staffid=request.POST.get('staffid')
        link=request.POST.get('link')
        
        # POST, generate bound form with data from the request
        app=taskupload(staffid=staffid,link=link,studentid=a)
        app.save()
        return redirect('taskuploads')
def taskss(request):
    if request.method == 'POST':
        studentid=request.POST.get('studentid')
        staffid=request.POST.get(' staffid')
        link=request.POST.get(' link')
      
        
        # POST, generate bound form with data from the request
        taskss=taskupload(studentid=studentid,staffid=staffid,link=link)
        taskss.save()
        return render(request,'tasksupload.html') 

def task(request):
    return render(request,'tasksupload.html')  
def addfeedback(request):
    a=request.session['uname']      
    if request.method == 'POST':
        subject=request.POST.get('subject')
        des=request.POST.get('des')
        
        app=userfeedback(uid=a,subject=subject,des=des)
        app.save()
        return redirect('feedback')  
def applications(request):
    a=request.session['uname']      
    if request.method == 'POST':
        internshipname=request.POST.get('internid')
        amount=request.POST.get('amount')
        date=request.POST.get('date')
        phoneno=request.POST.get('phone')
        status='pending'
        # POST, generate bound form with data from the request
        app=application(internshipname=internshipname,studid=a,amount=amount,date=date,phoneno=phoneno,status=status)
        app.save()
        return redirect('viewinternshipandapply')    
    
def applica(request):
    if request.method == 'POST':
        staffid=request.POST.get('staffid')
        internshipname=request.POST.get('internshipname')
        studid=request.POST.get('studid')
        amount=request.POST.get('amount')
        date=request.POST.get('date')
        phoneno=request.POST.get('phoneno')
        certificate=request.POST.get('certificate')
        
        # POST, generate bound form with data from the request
        app=application(staffid=staffid,internshipname=internshipname,studid=studid,amount=amount,date=date,phoneno=phoneno,certificate=certificate)
        app.save()
        return render(request,'appli.html') 
    
    

def certificate(request):
    a=request.session['sid']      
    sel=userreg.objects.get(id=a)
    return render(request,'staff/viewstaff.html',{'result':sel})
    
def applyview(request,id):
    
    sel=intern.objects.get(id=id)
    return render(request,'appli.html',{'result':sel})
    
    
    
def viewfeedback(request):
    
    sel=userfeedback.objects.all()
    return render(request,'admin/viewfeedback.html',{'result':sel})
    