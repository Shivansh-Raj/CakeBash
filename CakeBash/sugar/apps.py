from django.apps import AppConfig
from django.conf import settings

class SugarConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'sugar'
    def ready(self):
        from django.db.models.signals import post_save
        from django.contrib.auth.models import Group
        def add_to_customer_group(sender,instance,created,**kwargs):
            user = instance
            print("----------------user",user)
            if created:
                group, ok = Group.objects.get_or_create(name='Customers')
                group.user_set.add(user)
        post_save.connect(add_to_customer_group,sender=settings.AUTH_USER_MODEL)

