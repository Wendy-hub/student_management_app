from PIL import Image
from django.contrib.auth.models import AbstractUser
from django.core.validators import MaxValueValidator, MinValueValidator
from django.db import models
from django.db.models.signals import post_save
from django.dispatch import receiver


# Overriding the Default Django Auth
# User and adding One More Field (user_type)
# class CustomUser(AbstractUser):
#     HOD = '1'
#     TEACHER = '2'
#     STUDENT = '3'
#
#     EMAIL_TO_USER_TYPE_MAP = {
#         'hod': HOD,
#         'staff': TEACHER,
#         'student': STUDENT
#     }
#
#     user_type_data = ((HOD, "HOD"), (TEACHER, "Teacher"), (STUDENT, "Student"))
#     user_type = models.CharField(default=1, choices=user_type_data, max_length=10)
#
#


class Student(models.Model):
    # 登录：学号，密码，/邮箱
    GENDER_CHOICES = (
        ('M', 'Male'),
        ('F', 'Female'),
    )
    S_id = models.AutoField(primary_key=True)
    S_number = models.CharField(max_length=50, unique=True)
    S_name = models.CharField(max_length=120)
    S_sex = models.CharField(max_length=1, choices=GENDER_CHOICES)
    S_major = models.CharField(max_length=50)
    S_email = models.EmailField(unique=True)
    S_image = models.ImageField(default='default.jpg', upload_to='profile_pics')
    S_introduction = models.TextField(blank=True)

    def __str__(self):
        return self.S_name + ": " + self.S_number

    def save(self, *args, **kwargs):
        super().save(*args, **kwargs)

        img = Image.open(self.S_image.path)

        if img.height > 300 or img.width > 300:
            output_size = (300, 300)
            img.thumbnail(output_size)
            img.save(self.S_image.path)


class Course(models.Model):
    C_id = models.AutoField(primary_key=True)
    C_number = models.CharField(max_length=50, unique=True)
    C_name = models.CharField(max_length=120)
    T_id = models.CharField(max_length=50)
    C_site = models.CharField(max_length=50)
    C_time = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.C_name + ": " + self.C_number


class SC(models.Model):
    S_id = models.ForeignKey(Student, to_field='S_number', on_delete=models.CASCADE)
    C_id = models.ForeignKey(Course, to_field='C_number', on_delete=models.CASCADE)
    score = models.IntegerField(blank=True, null=True,
                                validators=[
                                    MaxValueValidator(100),
                                    MinValueValidator(1)
                                ])

    def __str__(self):
        return self.S_id.S_name + " " + self.C_id.C_name + ": " + str(self.score)


class Teacher(models.Model):
    GENDER_CHOICES = (
        ('M', 'Male'),
        ('F', 'Female'),
    )
    T_id = models.AutoField(primary_key=True)
    T_number = models.CharField(max_length=50, unique=True)
    T_name = models.CharField(max_length=120)
    T_sex = models.CharField(max_length=1, choices=GENDER_CHOICES)
    T_email = models.EmailField(unique=True)
    S_image = models.ImageField(default='default.jpg', upload_to='profile_pics')

    def __str__(self):
        return self.T_name + ": " + self.T_number

    def save(self, *args, **kwargs):
        super().save(*args, **kwargs)

        img = Image.open(self.S_image.path)

        if img.height > 300 or img.width > 300:
            output_size = (300, 300)
            img.thumbnail(output_size)
            img.save(self.S_image.path)

