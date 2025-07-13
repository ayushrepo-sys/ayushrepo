from django.db import models
from faculty.models import *

# Create your models here.
class SubmitAnswer(models.Model):
    answer_id=models.AutoField(primary_key=True)
    student_id=models.IntegerField()
    question_id=models.ForeignKey(question,on_delete=models.CASCADE)
    Answer=models.CharField(max_length=20)