from django.db import models
from django.contrib import admin

# Create your models here.

class Departments(models.Model):
    DepartmentID=models.AutoField(primary_key=True)
    DepartmentName=models.CharField(max_length=100)


class Employees(models.Model):
    EmployeeID=models.AutoField(primary_key=True)
    EmployeeName=models.CharField(max_length=100)
    Department=models.CharField(max_length=100)
    DateofJoining=models.DateField()
    PhotoFileName=models.CharField(max_length=100)

class current_jobs(models.Model):
    job_id=models.AutoField(primary_key=True)
    job_description=models.CharField(max_length=200)
    location=models.CharField(max_length=100)
    company_name=models.CharField(max_length=100)
    date_posted=models.CharField(max_length=50)
    user_id=models.IntegerField()

