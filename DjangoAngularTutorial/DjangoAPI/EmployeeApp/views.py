from django.shortcuts import render,redirect
from django.views.decorators.csrf import csrf_exempt
from rest_framework.parsers import JSONParser
from django.http.response import JsonResponse
from django.contrib.auth import authenticate,login,logout
from django.contrib import messages
from EmployeeApp.models import Departments,Employees,current_jobs
from EmployeeApp.serializers import DepartmentSerializer,EmployeeSerializer,CurrentJobsSerializer

from django.core.files.storage import default_storage
from django.core import serializers

from django.http import JsonResponse
from django.core.serializers import serialize
import json
from django.shortcuts import render
from django.db import connection
from django.contrib.auth.models import User,Group
#import bcrypt

from django.contrib.auth.hashers import UNUSABLE_PASSWORD_PREFIX, check_password

from email.message import EmailMessage
import ssl
import smtplib

from datetime import datetime
# Create your views here.

app_id='hh'
job_id=0
user_email=''
user_name=''

def is_password_usable(encoded):
    # Check if the password is usable
    return encoded is None or not encoded.startswith(UNUSABLE_PASSWORD_PREFIX)

@csrf_exempt
#gets all the deparment information
def departmentApi(request,id=0):
    if request.method=='GET':
        departments=Departments.objects.all()
        departments_serializer=DepartmentSerializer(departments,many=True)
        return JsonResponse(departments_serializer.data,safe=False)
    elif request.method=='POST':
        department_data=JSONParser().parse(request)
        departments_serializer=DepartmentSerializer(data=department_data)
        if departments_serializer.is_valid():
            departments_serializer.save()
            return JsonResponse("Added Successfully!!", safe=False)
        return JsonResponse("Failed to add.", safe=False)
    
    elif request.method=='PUT':
        department_data=JSONParser().parse(request)
        department=Departments.objects.get(DepartmentID=department_data['DepartmentID'])
        departments_serializer=DepartmentSerializer(department,data=department_data)
        if departments_serializer.is_valid():
            departments_serializer.save()
            return JsonResponse("Updated Successfully!!", safe=False)
        return JsonResponse("Failed to update.",safe=False)
    
    elif request.method=='DELETE':
            department=Departments.objects.get(DepartmentID=id)
            department.delete()
            return JsonResponse("Deleted Succeffully!!", safe=False)



@csrf_exempt
#gets all the employee information
def employeeApi(request,id=0):
    if request.method=='GET':
        employees=Employees.objects.all()
        employees_serializer=EmployeeSerializer(employees,many=True)
        return JsonResponse(employees_serializer.data,safe=False)
    
    elif request.method=='POST':
        employee_data=JSONParser().parse(request)
        employee_serializer=EmployeeSerializer(data=employee_data)
        if employee_serializer.is_valid():
            employee_serializer.save()
            return JsonResponse("Added Successfully!!", safe=False)
        return JsonResponse("Failed to add.", safe=False)
    
    elif request.method=='PUT':
        employee_data=JSONParser().parse(request)
        employee=Employees.objects.get(EmployeeID=employee_data['EmployeeID'])
        employee_serializer=EmployeeSerializer(employee,data=employee_data)
        if employee_serializer.is_valid():
            employee_serializer.save()
            return JsonResponse("Updated Successfully!!", safe=False)
        return JsonResponse("Failed to update.",safe=False)
    
    elif request.method=='DELETE':
        employee=Employees.objects.get(EmployeeID=id)
        employee.delete()
        return JsonResponse("Deleted sucessfully!!.",safe=False)

#gets current jobs
@csrf_exempt
def current_jobsApiH(request,id=0):
    if request.method=='GET':
        current=current_jobs.objects.all()
        Current_JobsSerializer=CurrentJobsSerializer(current,many=True)
        print(Current_JobsSerializer.data)
       
        
        return JsonResponse(Current_JobsSerializer.data,safe=False)


@csrf_exempt
def current_jobsApi(request,id=0):
    if request.method=='GET':
        current=current_jobs.objects.filter(user_id=U_ID)
        Current_JobsSerializer=CurrentJobsSerializer(current,many=True)
        print(Current_JobsSerializer.data)
       
        
        return JsonResponse(Current_JobsSerializer.data,safe=False)
    
    elif request.method=='POST':
        current_data=JSONParser().parse(request)
        print(current_data)
        Current_JobsSerializer=CurrentJobsSerializer(data=current_data)
        if Current_JobsSerializer.is_valid():
            Current_JobsSerializer.save()
            return JsonResponse("Added Successfully!!", safe=False)
        return JsonResponse("Failed to add.", safe=False)
    
    elif request.method=='PUT':
        current_data=JSONParser().parse(request)
        current=current_jobs.objects.get(job_id=current_data['job_id'])
        Current_JobsSerializer=CurrentJobsSerializer(current,data=current_data)
        if Current_JobsSerializer.is_valid():
            Current_JobsSerializer.save()
            return JsonResponse("Updated Successfully!!", safe=False)
        return JsonResponse("Failed to update.",safe=False)
    
    elif request.method=='DELETE':
            current=current_jobs.objects.get(job_id=id)
            current.delete()
            return JsonResponse("Deleted Succeffully!!", safe=False)





@csrf_exempt
#fecthes user information when logged in
def login_user(request):
    print('hello0')
    currentdata=JSONParser().parse(request)
    
    if request.method=="POST":
        print('hello2')
        username = currentdata['username']
        password = currentdata['password']
        global app_id
        app_id=username
      
        print(password)
        
        global user_email
        global user_name
        global U_ID
        query="""Select id,password,email,username from auth_user where username=%s"""
        password_db='0'
        with connection.cursor() as cursor:
            cursor.execute(query,[username])
            rows = cursor.fetchall()
        for row in rows:
            id_db=row[0]
            U_ID=row[0]
            password_db=row[1]
            user_email=row[2]
            user_name=row[3]
        #user = authenticate(request, username=username, password=password)
        print('hello3')
        #d1=User.objects.get(username=currentdata['username'])
        print(username)
        #print(user)
        #d2=User.groups.all()
        #print(d2)
        print(password_db)

        if password_db==password:
            print('hello4')
            query="""Select group_id from auth_user_groups where user_id=%s"""
            with connection.cursor() as cursor:
                cursor.execute(query,[id_db])
                rows = cursor.fetchall()
            print(rows)
            for row in rows:
                g_id=row[0]
            
            
          
            print(g_id)
            if g_id==2:
                m='Hunter'
                
            elif g_id==1:
                m='Employee'
                
            else:
                m='Admin'
            
            data={
                'group':m,
                'username':username
                }
            return JsonResponse(data)
     

        else:
            print('hello5')
            messages.success(request, ("There Was An Error Logging In, Try Again..."))	
            return JsonResponse("There Was An Error Logging In, Try Again...",safe=False)
            

    else:
        return render(request,'login',{})




@csrf_exempt
def signup(request):
    print('hello0')
    currentdata=JSONParser().parse(request)
    if request.method=="POST":
        print('hello2')
        username = currentdata['username']
        password = currentdata['password']
       
       
        
        email=currentdata['email']
        phone=currentdata['phone']
        profile=currentdata['profile']
        print(email)


        query = """
        SELECT count(id)
        FROM auth_user where email=%s;
       
        """
        with connection.cursor() as cursor:
            cursor.execute(query,[email])
        # Fetch all rows returned by the query
            rows = cursor.fetchall()
        for row in rows:
            now = datetime.now()
            print('came')
            if row[0]==1:
                print("User already registered with this email")
            else:
                query = """
                        INSERT INTO auth_user (
                          password,
                          username,
                          email,
                          is_superuser,
                          last_name,
                          is_staff,
                          is_active,
                          date_joined,
                          first_name
                         
                          
                      )
                      VALUES (
                      %s,
                      %s,
                      %s,
                      0,
                      ' ',
                      0,
                      1,
                      %s,
                      ' ');
       
                """
                
                with connection.cursor() as cursor:
                        cursor.execute(query,[password,username,email,now])
                print("came1")


                if profile=='Employee':
                    group='Employee'
                else:
                    group='Hunter'
                     
                query2 = """
                SELECT id
                FROM auth_user where email=%s;
                """
                with connection.cursor() as cursor:
                    cursor.execute(query2,[email])
                    rows1 = cursor.fetchall()
                for row in rows1:
                        x=row[0]

                print(x)
                my_group = Group.objects.get(name=group) 
                my_group.user_set.add(x)
              

            
                print("jkkkk")
            print('sucesss')
            return JsonResponse("User registered Sucesafully.",safe=False)


        user = authenticate(request, username=username, password=password)

        
@csrf_exempt
def currentemail(request):
    currentdata=JSONParser().parse(request)
    if request.method=="POST":
        print("kkeke")
        query2 = """
                SELECT id,username,email,job_id,job_description,location,company_name
                FROM auth_user as u1
                LEFT JOIN EmployeeApp_current_jobs as e1 ON u1.id= e1.user_id where e1.job_id=%s """
        with connection.cursor() as cursor:
                cursor.execute(query2,[currentdata])
                rows1 = cursor.fetchall()
        for row in rows1:
            rec_id=int(row[0])
            rec_name=row[1]
            rec_email=row[2]
            rec_job_id=row[3]
            rec_job_des=row[4]
            rec_loca=row[5]
            rec_company=row[6]

        print(app_id,user_email,user_name)
        #sending email to job_hunter
        email_sender='rreferme@gmail.com'
        email_password='iwgokrxmlokbpiys'
        email_receiver=user_email

        subject=f"Sucessfully applied the job {rec_id}"
        body=f""" Hello  {user_name},
        your job application for the position of {rec_job_des} has been successfully sent to the recruiter. 
    
        Thank you for applying!

        Team Refer2me

             """

        print("hii")
        em=EmailMessage()
        em['From']=email_sender
        em['to']=email_receiver
        em['subject']=subject
        em.set_content(body.center(80))

        context=ssl.create_default_context()

        with smtplib.SMTP_SSL('smtp.gmail.com',465,context=context) as smtp:
            smtp.login(email_sender,email_password)
            smtp.sendmail(email_sender,email_receiver,em.as_string())

        #sending an automated email to recruiter
        email_sender='rreferme@gmail.com'
        email_password='iwgokrxmlokbpiys'
        email_receiver=rec_email

        subject=f"{user_name} applied the job {rec_id}"
        body=f""" Hello {rec_name},
        Your got this email as one of the user of our refer2me had appiled to the job that you have posted for job id:{rec_job_id}here are the details of that user:
        Username:{user_name}
        Useremail:{user_email}

        
        Thank you for Choosing refer2me!

        Team Refer2me

             """




        em=EmailMessage()
        em['From']=email_sender
        em['to']=email_receiver
        em['subject']=subject
        em.set_content(body.center(80))

        context=ssl.create_default_context()

        with smtplib.SMTP_SSL('smtp.gmail.com',465,context=context) as smtp:
            smtp.login(email_sender,email_password)
            smtp.sendmail(email_sender,email_receiver,em.as_string())
        return JsonResponse("Your application sent to recruiter.",safe=False)


@csrf_exempt
def currentgraph(request):
    
    if request.method=='GET':
        list1=[]
        list2=[]
        list3=[]
        list4=[]
        query2 = """ select id , date_joined,email, username from auth_user WHERE id=%s
              """
            
        with connection.cursor() as cursor:
                cursor.execute(query2,[U_ID])
                rows1 = cursor.fetchall()
        for row in rows1:
            list1.append(row[0])
            list2.append(row[1])
            list3.append(row[2])
            list4.append(row[3])
        data={
            'list1':list1,
            'list2':list2,
            'list3':list3,
            'list4':list4
        }  
        print(U_ID)  
        print("hiii")
        print(list2)
        return JsonResponse(data,safe=False)
    
     
    
    

@csrf_exempt
def currentgraph1(request):
    
    if request.method=='GET':
        list1=[]
        list2=[]
        list3=[]
        list4=[]
        query2 = """SELECT user_id, COUNT(*) AS count,date_posted,location FROM EmployeeApp_current_jobs GROUP BY user_id;
              """
            
        with connection.cursor() as cursor:
                cursor.execute(query2)
                rows1 = cursor.fetchall()
        for row in rows1:
            list1.append(row[0])
            list2.append(row[1])
            list3.append(row[2])
            list4.append(row[3])
        data={
            'list1':list1,
            'list2':list2,
            'list3':list3,
            'list4':list4
        }  
        print(U_ID)  
        print("hiii")
        print(list2)
        return JsonResponse(data,safe=False)
