from django.contrib import admin
from .models import Student, Course, SC, Teacher


# Register your models here.
admin.site.register(Student)
admin.site.register(Course)
admin.site.register(SC)
admin.site.register(Teacher)
