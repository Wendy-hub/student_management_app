# Generated by Django 4.1.3 on 2022-12-06 08:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('student_management_app', '0002_alter_sc_score'),
    ]

    operations = [
        migrations.AlterField(
            model_name='course',
            name='C_time',
            field=models.DateField(auto_now=True),
        ),
    ]
