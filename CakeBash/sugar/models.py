from django.db import models
from django.utils.translation import gettext as _
from django.contrib.auth.models import User


class User_def(models.Model):
    username=models.CharField(max_length=30,null=True)
    email=models.EmailField( max_length=254)
    password=models.CharField(max_length=300,null=True)

# Create your models here.
class Category(models.Model):
    name=models.CharField(max_length=30,null=True)
    image=models.ImageField(upload_to='static/',default='static/cake.jpg')
    def __str__(self):
        return self.name


class Menu(models.Model):
    name=models.CharField(max_length=30,null=True)
    categories=models.ManyToManyField(Category)
    image=models.ImageField(upload_to='static/',default='static/cake.jpg')
    # price=models.CharField(max_length=20,null=True)
    price=models.IntegerField(null=True)
    is_veg=models.BooleanField(_("is_vegeterian"), default=False)
    description=models.CharField(max_length=200,null=True)
    def __str__(self):
        return self.name

class orders(models.Model):
    quantity=models.IntegerField(default=1)
    product_id=models.ForeignKey(Menu,null=True, on_delete=models.CASCADE)
    user_name=models.ForeignKey(User, null=True, on_delete=models.CASCADE)

class review(models.Model):
    by = models.ForeignKey(User, on_delete=models.CASCADE)
    content = models.CharField(max_length=500)
    created_at = models.DateTimeField(auto_now_add=True)

class Meta:
    db_table = 'sugar'