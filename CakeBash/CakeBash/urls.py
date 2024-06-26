
from django.contrib import admin
from django.urls import path,include

# class CustomAdminSite(admin.AdminSite):
#     site_header = 'CAKE_BASH'  # Set your custom header here
#     site_title = 'SUGAR_SLIDE'  
#     index_title="CakeBash"

admin.site.site_header="Cake_Bash"
admin.site.site_Title="Slide"
admin.site.index_title="Sugar"

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('sugar.urls'))

]
