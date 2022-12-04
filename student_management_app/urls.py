from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from django.contrib.auth import views as auth_views
from . import views

urlpatterns = [
    path("", views.index, name='index'),
    path('logout/', auth_views.LogoutView.as_view(template_name='student_management_app/logout.html'), name='logout'),
    # students
    path("student_login/do_stu_login/", views.do_stu_login, name='do_student_login'),
    path("student/home/", views.student_home, name='student_home'),
    path("student/profile/", views.student_profile, name='student_profile'),
    path("student/result/", views.student_result, name='student_result'),

    # teachers
    path("teacher_login/do_teacher_login/", views.do_teacher_login, name='do_teacher_login'),
    path("teacher/home/", views.teacher_home, name='teacher_home'),
    path("teacher/profile/", views.teacher_profile, name='teacher_profile'),
    path("courses/", views.show_courses, name='show_courses'),
    path("course/<course_id>/", views.show_course_students, name='students_in_course'),
    path("course/<course_id>/edit/<int:student_id>/", views.edit_student, name='edit_student'),

    # change password
    path('password-reset/',
         auth_views.PasswordResetView.as_view(
             template_name='student_management_app/password_reset.html'
         ),
         name='password_reset'),
    path('password-reset/done/',
         auth_views.PasswordResetDoneView.as_view(
             template_name='student_management_app/password_reset_done.html'
         ),
         name='password_reset_done'),
    path('password-reset-confirm/<uidb64>/<token>/',
         auth_views.PasswordResetConfirmView.as_view(
             template_name='student_management_app/password_reset_confirm.html'
         ),
         name='password_reset_confirm'),
    path('password-reset-complete/',
         auth_views.PasswordResetCompleteView.as_view(
             template_name='student_management_app/password_reset_complete.html'
         ),
         name='password_reset_complete'),
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

