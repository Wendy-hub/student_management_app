import django_filters
from .models import *


class CourseFilter(django_filters.FilterSet):
    S_number = django_filters.CharFilter(label='学号')
    S_name = django_filters.CharFilter(label='姓名')

    class Meta:
        model = Student
        fields = ['S_number', 'S_name']
