from django.conf.urls import url
from EmployeeApp import views

from django.conf.urls.static import static
from django.conf import settings
urlpatterns=[

    url(r'^department/$',views.departmentApi,name='department'),
    url(r'^department/([0-9]+)$',views.departmentApi),

    url(r'^currentjobs/$',views.current_jobsApi),
    url(r'^currentjobs/([0-9]+)$',views.current_jobsApi),

   


    url(r'^login/$',views.login_user),
    url(r'^login/([0-9]+)$',views.login_user),

    url(r'^signup/$',views.signup),
    url(r'^signup/([0-9]+)$',views.signup),
    

    url(r'^employee/$',views.employeeApi),
    url(r'^employee/([0-9]+)$',views.employeeApi),

    url(r'^SaveFile$', views.SaveFile)

] + static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)