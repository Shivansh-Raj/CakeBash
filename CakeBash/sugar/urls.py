
from django.contrib import admin
from django.urls import path
from sugar import views

urlpatterns = [
    path("",views.index),
    path("index",views.home ),
    path("logged_in",views.logged_in ),
    path("home_not_anonymous",views.home_not_anonymous ),
    path("menu",views.menu ),
    path("login",views.LoginUser),
    path("logout",views.logout_user),
    path("signup/<int:submit>",views.SignupUser),
    path("MenuSetUp",views.add_to_menu),
    path("to_menu/<str:id>",views.to_menu),
    path("orders",views.orders_cart),
    path("search",views.search),
    path("trial",views.trial),
    path("update/<int:id_of_order>",views.update),
    path("delete_item/<int:id>",views.delete),
    path("cart_update/<int:id_of_order>",views.cart_update)
    
]

