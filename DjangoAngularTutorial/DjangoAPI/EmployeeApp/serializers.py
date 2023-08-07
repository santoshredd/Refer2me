from rest_framework import serializers
from EmployeeApp.models import Departments, Employees,current_jobs

class DepartmentSerializer(serializers.ModelSerializer):
    class Meta:
        model= Departments
        fields = ('DepartmentID',
                  'DepartmentName')
        

class EmployeeSerializer(serializers.ModelSerializer):
    class Meta:
        model= Employees
        fields= ('EmployeeID',
                 'EmployeeName',
                 'Department',
                 'DateofJoining',
                 'PhotoFileName')
        
class CurrentJobsSerializer(serializers.ModelSerializer):
    class Meta:
        model=current_jobs
        fields=('job_id',
                'job_description',
                'location',
                'company_name',
                'date_posted',
                'user_id'

        )
        
        