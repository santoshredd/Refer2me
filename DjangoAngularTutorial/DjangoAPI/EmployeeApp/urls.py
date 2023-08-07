from django.urls import re_path
from EmployeeApp import views

from django.conf.urls.static import static
from django.conf import settings
urlpatterns=[

    re_path(r'^department/$',views.departmentApi,name='department'),
    re_path(r'^department/([0-9]+)$',views.departmentApi),

    re_path(r'^currentjobs/$',views.current_jobsApi),
    re_path(r'^currentjobs/([0-9]+)$',views.current_jobsApi),

    re_path(r'^currentjobsH/$',views.current_jobsApiH),
    re_path(r'^currentjobsH/([0-9]+)$',views.current_jobsApiH),

    re_path(r'^currentuser/$',views.current_jobsApi),
    re_path(r'^currentuser/([0-9]+)$',views.current_jobsApi),


    re_path(r'^login/$',views.login_user),
    re_path(r'^login/([0-9]+)$',views.login_user),

    re_path(r'^signup/$',views.signup),
    re_path(r'^signup/([0-9]+)$',views.signup),

    re_path(r'^currentemail/$',views.currentemail),
    re_path(r'^currentemail/([0-9]+)$',views.currentemail),
    

    re_path(r'^employee/$',views.employeeApi),
    re_path(r'^employee/([0-9]+)$',views.employeeApi),

    re_path(r'^currentgraph/$',views.currentgraph),
    re_path(r'^currentgraph/([0-9]+)$',views.currentgraph),

    re_path(r'^currentgraph1/$',views.currentgraph1),
    re_path(r'^currentgraph1/([0-9]+)$',views.currentgraph1),


    

] + static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)