"""company URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from . import views
from django.conf import urls
from django.conf import settings
from django.conf.urls.static import static



urlpatterns = [

    path('uploads',views.uploads,name='uploads'),

    path('viewapplication',views.viewapplication,name='viewapplication'),
    path('viewprofile',views.viewprofile,name='viewprofile'),       
    path('', views.index, name='index'),
    path('dash', views.dash, name='dash'),   
    path('noteuploladstaff', views.noteuploladstaff, name='noteuploladstaff'),
    path('viewinternshipandapply', views.viewinternshipandapply, name='viewinternshipandapply'),
    path('faculityview', views.faculityview, name='faculityview'),
    path('viewnote', views.viewnote, name='viewnote'),
    path('viewclass', views.viewclass, name='viewclass'),
    path('approved/<int:id>', views.approved, name='approved'),
    path('home', views.home, name='home'),

    path('taskuploads', views.taskuploads, name='taskuploads'),
    path('viewstafp', views.viewstafp, name='iewstafp'),
 
    path('staffdash', views.staffdash, name='staffdash'),   

    path('taskss', views.taskss, name='taskss'),
    path('feedback', views.feedback, name='feedback'),
    path('addfeedback', views.addfeedback, name='addfeedback'),
    path('viewfeedback', views.viewfeedback, name='viewfeedback'),

    path('task', views.task, name='task'),
    
    path('stftask', views.stftask, name='stftask'),
    path('stafftasks', views.stafftasks, name='stafftasks'),
   path('certificate', views.certificate, name='certificate'),
   path('certificatee', views.certificatee, name='certificatee'),


    path('onlineclasss', views.onlineclasss, name='onlineclasss'),     
    path('clsonline', views.clsonline, name='clsonline'),     
    path('addstudent', views.addstudent, name='addstudent'),    
    path('addstd', views.addstd, name='addregg'),    
    path('logint', views.logint, name='logint'),    
    path('userlog', views.userlog, name='userlog'),    
    path('login', views.login, name='login'),    
    path('addstaff', views.addstaff, name='addstaff'), 
    #path('viewuser', views.viewuser, name='viewuser'),
    path('userview', views.userview, name='viewuser'),
    path('internships', views.internships, name='internships'),
    path('addmentor', views.addmentor, name='addmentor'),
    path('courses', views.courses, name='courses'),
    path('faculity', views.faculity, name='faculity'), 
    path('internship', views.internship, name='internship'), 
    path('notes', views.notes, name='notes'),
    path('logout', views.logout, name='logout'), 
    
    path('viewstudapp', views.viewstudapp, name='viewstudapp'), 

    path('applyview/applications',views.applications,name='applications'), 
    path('applica', views.applica, name='applica'), 
    
    path('appapproved/<int:id>', views.appapproved, name='appapproved'),

    path('noteuploadclass', views.noteuploadclass, name='noteuploadclass'),
    
    path('applyview/<int:id>', views.applyview, name='applyview'),
    
    path('admin/', admin.site.urls),
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
