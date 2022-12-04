from django.db.models.signals import post_save, post_delete
from django.dispatch import receiver
from django.contrib.auth.models import User
from .models import Student, Teacher


@receiver(post_save, sender=Student)
def add_to_auth_user(sender, instance, created, **kwargs):
    print("add to auth user")
    if created:
        User.objects.create_user(username=instance.S_number, email=instance.S_email, password='Wang@123')
        #如果提供邮箱


@receiver(post_delete, sender=Student)
def add_to_auth_user(sender, instance, **kwargs):
    u = User.objects.get(username=instance.S_number)
    u.delete()


@receiver(post_save, sender=Teacher)
def add_to_auth_user(sender, instance, created, **kwargs):
    print("add to auth user")
    if created:
        User.objects.create_user(username=instance.T_number, email=instance.T_email, password='Wang@123')
        #如果提供邮箱


@receiver(post_delete, sender=Teacher)
def add_to_auth_user(sender, instance, **kwargs):
    u = User.objects.get(username=instance.T_number)
    u.delete()

# @receiver(post_save, sender=Student)
# def save_to_auth_user(sender, instance, **kwargs):
#     print("Hello from signal handler")
#     instance.save()
