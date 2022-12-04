from django import forms
from .models import Student, Teacher, SC, Course
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm


# class UserRegisterForm(UserCreationForm):
#     email = forms.EmailField()
#
#     class Meta:
#         model = User
#         fields = ['username', 'email', 'password1', 'password2']


class StudentUpdateForm(forms.ModelForm):
    class Meta:
        model = Student
        fields = ['S_name', 'S_sex', 'S_email', 'S_image', 'S_introduction']
        labels = {
            'S_name': '姓名',
            'S_sex': '性别',
            'S_email': '邮箱',
            "S_image": '头像',
            'S_introduction': '简介',
        }

    def __init__(self, *args, **kwargs):
        super(StudentUpdateForm, self).__init__(*args, **kwargs)
        self.fields['S_image'].required = False
        self.fields['S_introduction'].required = False


class TeacherUpdateForm(forms.ModelForm):
    class Meta:
        model = Teacher
        fields = ['T_name', 'T_sex', 'T_email', 'S_image']
        labels = {
            'T_name': '姓名',
            'T_sex': '性别',
            'T_email': '邮箱',
            'S_image': '头像'
        }

    def __init__(self, *args, **kwargs):
        super(TeacherUpdateForm, self).__init__(*args, **kwargs)
        self.fields['S_image'].required = False


class ScoreEditForm(forms.ModelForm):
    # S_id = forms.ModelChoiceField(queryset=Student.objects.all(), label='学号')
    # C_id = forms.ModelChoiceField(queryset=Course.objects.all(), label='课程')

    class Meta:
        model = SC
        fields = ['S_id', 'C_id', 'score']
        labels = {
            'S_id': '学号',
            'C_id': '课程号',
            'score': '分数'
        }
