"""studentMS URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
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
from django.urls import path, include
from student_management_app import views as app_views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('student_login/', app_views.student_login, name='student_login'),
    path('teacher_login/', app_views.teacher_login, name='teacher_login'),
    path('', include('student_management_app.urls')),
]
