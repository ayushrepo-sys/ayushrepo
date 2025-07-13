from django.contrib import admin
from .models  import register_master,profile_update
# Register your models here.
admin.site.register(register_master)
admin.site.register(profile_update)


#in commandpromptwrite it
#-------------------------------

#python manage.py makemigrations
#python manage.py migrate
#python manage.py createsuperuser
#username=admin
#password=admin
#python manage.py runserver