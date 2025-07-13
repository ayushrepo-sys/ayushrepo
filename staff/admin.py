from django.contrib import admin

# Register your models here.
from  .models import *
admin.site.register(add_Book)
admin.site.register(Book_issued)