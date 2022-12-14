# Generated by Django 4.1.3 on 2022-11-29 08:53

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Course',
            fields=[
                ('C_id', models.AutoField(primary_key=True, serialize=False)),
                ('C_number', models.CharField(max_length=50, unique=True)),
                ('C_name', models.CharField(max_length=120)),
                ('T_id', models.CharField(max_length=50)),
                ('C_site', models.CharField(max_length=50)),
                ('C_time', models.DateTimeField(auto_now=True)),
            ],
        ),
        migrations.CreateModel(
            name='Student',
            fields=[
                ('S_id', models.AutoField(primary_key=True, serialize=False)),
                ('S_number', models.CharField(max_length=50, unique=True)),
                ('S_name', models.CharField(max_length=120)),
                ('S_sex', models.CharField(choices=[('M', 'Male'), ('F', 'Female')], max_length=1)),
                ('S_major', models.CharField(max_length=50)),
                ('S_email', models.EmailField(max_length=254, unique=True)),
                ('S_image', models.ImageField(default='default.jpg', upload_to='profile_pics')),
                ('S_introduction', models.TextField(blank=True)),
            ],
        ),
        migrations.CreateModel(
            name='Teacher',
            fields=[
                ('T_id', models.AutoField(primary_key=True, serialize=False)),
                ('T_number', models.CharField(max_length=50, unique=True)),
                ('T_name', models.CharField(max_length=120)),
                ('T_sex', models.CharField(choices=[('M', 'Male'), ('F', 'Female')], max_length=1)),
                ('T_email', models.EmailField(max_length=254, unique=True)),
                ('S_image', models.ImageField(default='default.jpg', upload_to='profile_pics')),
            ],
        ),
        migrations.CreateModel(
            name='SC',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('score', models.IntegerField(blank=True, null=True)),
                ('C_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='student_management_app.course', to_field='C_number')),
                ('S_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='student_management_app.student', to_field='S_number')),
            ],
        ),
    ]
