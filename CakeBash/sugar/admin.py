from django.contrib import admin
from sugar.models import Menu,orders,Category,User_def,review
# Register your models here.
admin.site.register(Category)
admin.site.register(orders)
admin.site.register(Menu)
admin.site.register(User_def)
admin.site.register(review)