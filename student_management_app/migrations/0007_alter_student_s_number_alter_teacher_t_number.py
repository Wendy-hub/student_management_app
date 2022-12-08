# Generated by Django 4.1.3 on 2022-12-07 10:06

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('student_management_app', '0006_alter_student_s_major_alter_student_s_name_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='student',
            name='S_number',
            field=models.CharField(max_length=11, unique=True, validators=[django.core.validators.MinLengthValidator(11)]),
        ),
        migrations.AlterField(
            model_name='teacher',
            name='T_number',
            field=models.CharField(max_length=11, unique=True, validators=[django.core.validators.MinLengthValidator(11)]),
        ),
    ]