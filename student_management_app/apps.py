from django.apps import AppConfig


class StudentManagementAppConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'student_management_app'

    def ready(self):
        import student_management_app.signals
