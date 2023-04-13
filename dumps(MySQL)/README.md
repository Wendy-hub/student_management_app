# 我本地的MySQL导出的样本数据库

## 自己创建数据库可以：

1. 先在settings.py里设置自己的数据库（sqlite什么的都可以）。

2. 用python manage.py makemigrations和python manage.py migrate命令来构建数据库。

3. 最后用python manage.py createsuperuser命令创建管理员。

4. 之后可以登录管理员admin界面直接新建用户。
