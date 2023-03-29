
from django.db import models


class stud(models.Model):
    name = models.CharField(max_length=150)
    address = models.CharField(max_length=150)
    qualification = models.CharField(max_length=150)
    pass_year = models.CharField(max_length=150)
    phone_no = models.CharField(max_length=150)
    username = models.CharField(max_length=150)
    password = models.CharField(max_length=150)
    email = models.CharField(max_length=150)
    status = models.CharField(max_length=150)
    image = models.CharField(max_length=150)

class userreg(models.Model):
    Name = models.CharField(max_length=150)
    Email = models.CharField(max_length=150)
    password = models.CharField(max_length=150)
    user = models.CharField(max_length=150)
    phone_No = models.CharField(max_length=150)
    Course = models.CharField(max_length=150)
    Address= models.CharField(max_length=150)
    image= models.CharField(max_length=150)

    
    
class intern(models.Model):
    Name = models.CharField(max_length=150)
    Amount= models.CharField(max_length=150)
    Duration = models.CharField(max_length=150)
    Vaccancy = models.CharField(max_length=150)
    Stipend = models.CharField(max_length=150)
    post_date = models.CharField(max_length=150)
    last_date= models.CharField(max_length=150)
    Qualification= models.CharField(max_length=150)
    Description= models.CharField(max_length=150)
    
class note(models.Model):
    staffid = models.CharField(max_length=150)
    photo = models.FileField(max_length=150)
    date = models.CharField(max_length=150)
    internshipid = models.CharField(max_length=150)
   
class onliness(models.Model):
    staffid = models.CharField(max_length=150)
    link = models.FileField(max_length=150)
    date = models.CharField(max_length=150)
    internshipid = models.CharField(max_length=150)
    
class stafftask(models.Model):
    staffid = models.CharField(max_length=150)
    photo = models.FileField(max_length=150)
    date = models.CharField(max_length=150)
    internshipid = models.CharField(max_length=150)
    
class taskupload(models.Model):
    studentid = models.CharField(max_length=150)
    staffid = models.FileField(max_length=150)
    link = models.CharField(max_length=150)
    
    
class application(models.Model):
    internshipname= models.CharField(max_length=150)
    studid = models.CharField(max_length=150)
    amount = models.CharField(max_length=150)
    date = models.CharField(max_length=150)
    phoneno = models.CharField(max_length=150)
    status= models.CharField(max_length=150)
    
class userfeedback(models.Model):
    uid = models.CharField(max_length=150)
    subject = models.FileField(max_length=150)
    des = models.CharField(max_length=150)
            
     
    
      
    
    
    
