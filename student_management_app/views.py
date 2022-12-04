from itertools import chain

from django import forms
from django.contrib.auth import authenticate, login, logout
from django.http import HttpResponse
from django.shortcuts import render, redirect, get_object_or_404
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.urls import reverse

from .forms import StudentUpdateForm, TeacherUpdateForm, ScoreEditForm
from .models import Student, Course, SC, Teacher

ADMIN_ID = 1  # superuser是1


# def login_page(request):
#     # if request.user.is_authenticated:
#     #     if request.user.user_type == '1':
#     #         return redirect(reverse("admin_home"))
#     #     elif request.user.user_type == '2':
#     #         return redirect(reverse("staff_home"))
#     #     else:
#     #         return redirect(reverse("student_home"))
#     return render(request, 'student_management_app/templates/student_template/student_login.html')

def student_login(request):
    return render(request, 'student_template/student_login.html')


def do_stu_login(request):
    if request.method == 'POST':
        # print(request.POST)
        user_num = request.POST.get('number')
        user_pwd = request.POST.get('password')
        user = authenticate(username=user_num, password=user_pwd)
        print(user_num + ' ' + user_pwd)
        if user is not None and Student.objects.filter(S_number=user_num).exists():
            # print("user is not none")
            if user.is_active:
                # print("user is active")
                login(request, user)  # 这是核心
                context = {'user_num': request.user.username, user_pwd: request.user.password}
                if user.id == ADMIN_ID:
                    # context = admin_finance(request)
                    # return render(request, 'booksystem/admin_finance.html',
                    #               context)
                    return HttpResponse("<h4>Admin, welcome!</h4>")
                else:
                    # print("user will be redirected to student home")
                    return redirect(reverse("student_home"))
            else:
                messages.error(request, f'用户不存在!')
                return render(
                    request, 'student_template/student_login.html')
        else:  # 登录失败
            messages.error(request, f'登陆失败!')
            return render(request, 'student_template/student_login.html')
    else:
        return HttpResponse("<h4>Denied</h4>")


def teacher_login(request):
    return render(request, 'teacher_template/teacher_login.html')


def do_teacher_login(request):
    if request.method == 'POST':
        # print(request.POST)
        user_num = request.POST.get('number')
        user_pwd = request.POST.get('password')
        user = authenticate(username=user_num, password=user_pwd)
        print(user_num + ' ' + user_pwd)
        if user is not None and Teacher.objects.filter(T_number=user_num).exists():
            if user.is_active:
                login(request, user)  # 核心
                context = {'user_num': request.user.username, user_pwd: request.user.password}
                if user.id == ADMIN_ID:
                    # context = admin_finance(request)
                    # return render(request, 'booksystem/admin_finance.html',
                    #               context)
                    return HttpResponse("<h4>Admin, welcome!</h4>")
                else:
                    return redirect(reverse("teacher_home"))
            else:
                messages.error(request, f'用户不存在!')
                return render(request, 'teacher_template/teacher_login.html')
        else:  # 登录失败
            messages.error(request, f'登陆失败!')
            return render(request, 'teacher_template/teacher_login.html')
    else:
        return HttpResponse("<h4>Denied</h4>")


@login_required
def student_home(request):
    # context: 学号、专业等信息传进student数据库
    return render(request, 'student_template/student_home.html')


@login_required
def student_profile(request):
    # student = Student.objects.get(S_number=request.user.username)
    student = get_object_or_404(Student, S_number=request.user.username)
    if request.method == 'POST':
        print(student)
        form = StudentUpdateForm(request.POST or None, request.FILES,
                                 instance=student,
                                 initial={
                                     'S_name': student.S_name,
                                     'S_sex': student.S_sex,
                                     'S_email': student.S_email,
                                 })
        if form.is_valid():
            form.save()
            messages.success(request, f'Your account has been updated!')
            print("ok")
            return redirect('student_profile')
    else:
        # print("student: " + student)
        form = StudentUpdateForm(instance=student,
                                 initial={
                                     'S_name': student.S_name,
                                     'S_sex': student.S_sex,
                                     'S_email': student.S_email,
                                 })

    context = {'form': form, 'student_img': student.S_image}

    return render(request, 'student_template/student_profile.html', context)


@login_required
def student_result(request):
    stu_id = request.user.username
    scores = SC.objects.filter(S_id=stu_id)
    sc_C_id = scores.values("C_id_id")
    courses = Course.objects.filter(C_id__in=sc_C_id)

    print(scores)
    print("------")
    print(sc_C_id)
    print(courses)
    # result_union = scores.union(courses).order_by('C_id') #返回列联合的数据

    courses_result = sorted(courses, key=lambda instance: instance.C_id)
    scores_result = sorted(scores, key=lambda instance: instance.C_id_id)  # 外键

    # result_list = sorted(
    #     chain(courses, scores),
    #     key=lambda instance: instance.C_id)
    print("-------")
    print(courses_result[0].C_name)
    print(scores_result)

    context = {
        # 'courses': courses_result,
        # 'scores': scores_result
        'result': zip(courses_result, scores_result)
    }

    return render(request, 'student_template/student_result.html', context)


# ----------- Teacher ----------------

@login_required
def teacher_home(request):
    # context: 学号、专业等信息传进student数据库
    return render(request, 'teacher_template/teacher_home.html')


@login_required
def teacher_profile(request):
    teacher = get_object_or_404(Teacher, T_number=request.user.username)
    if request.method == 'POST':
        form = TeacherUpdateForm(request.POST or None, request.FILES,
                                 instance=teacher,
                                 initial={
                                     'T_name': teacher.T_name,
                                     'T_sex': teacher.T_sex,
                                     'T_email': teacher.T_email
                                 })
        if form.is_valid():
            form.save()
            messages.success(request, f'更新成功!')
            return redirect("teacher_profile")
    else:
        form = TeacherUpdateForm(instance=teacher,
                                 initial={
                                     'T_name': teacher.T_name,
                                     'T_sex': teacher.T_sex,
                                     'T_email': teacher.T_email
                                 })

    context = {'form': form, 'teacher_img': teacher.S_image}

    return render(request, 'teacher_template/teacher_profile.html', context)


@login_required
def show_courses(request):
    courses = Course.objects.filter(T_id=request.user.username)
    context = {'courses': courses}
    return render(request, 'teacher_template/show_courses.html', context)


# 该课的学生+他的成绩
@login_required
def show_course_students(request, course_id):
    # 通过SC表的外键
    scores = SC.objects.filter(C_id=course_id).order_by('S_id').values()
    # print(SC.objects.filter(C_id='0001'))
    s_numbers = scores.values('S_id')
    students = Student.objects.filter(S_number__in=s_numbers).order_by('S_number').values()

    context = {'results': zip(students, scores), 'course_id': course_id}

    return render(request, 'teacher_template/students_in_course.html', context)


# 修改修course_id课的学生 成绩
@login_required
def edit_student(request, course_id, student_id):
    student = Student.objects.get(S_number=student_id)
    score = SC.objects.get(S_id=student_id, C_id=course_id)
    course = Course.objects.get(C_id=course_id)
    if request.method == 'POST':
        form = ScoreEditForm(request.POST or None, instance=score,
                             initial={
                                 'S_id': student.pk,
                                 'C_id': course.pk,
                                 'score': score.score
                             })
        if form.is_valid():
            # course = Course.objects.get(C_number=form.cleaned_data['C_id'])

            # new_score = SC(S_id=student, C_id=course, score=score)
            # new_score.save()
            form.save()
            messages.success(request, f'修改成功!')
            return redirect("students_in_course", course_id=course_id)
    else:
        form = ScoreEditForm(instance=score)

    context = {
        'form': form,
        'course_id': course_id
    }
    return render(request, 'teacher_template/edit_student.html', context)


def index(request):
    return render(request, 'student_management_app/index.html')
