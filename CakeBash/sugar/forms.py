from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from sugar.models import Menu,orders,User_def,review

class ordersForm(forms.ModelForm):
    
    class Meta:
        model = orders
        fields = ('quantity','product_id','user_name')

    
class MenuForm(forms.ModelForm):
    
    class Meta:
        model = Menu
        fields = ('name','categories','image','price','is_veg','description')

class UserForm(forms.ModelForm):
    class Meta:
        model = User_def
        fields =('username','email','password')
    
class RegistrationForm(UserCreationForm):
    email = forms.EmailField(required=True)
    class Meta:
        model = User
        fields = ["username","email","password1","password2"]

    
class reviewForm(forms.ModelForm):
    class Meta:
        model = review
        fields = ['content']