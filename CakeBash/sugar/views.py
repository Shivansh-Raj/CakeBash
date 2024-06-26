from django.shortcuts import render,redirect
from sugar.forms import MenuForm,ordersForm,UserForm,RegistrationForm,reviewForm
from sugar.models import Menu,orders,User_def,Category,review
from django.contrib.auth import authenticate,logout,login
from django.contrib.auth.decorators import login_required,permission_required
from django.contrib.auth.models import User, Group, Permission
from django.contrib.contenttypes.models import ContentType
from django.db.models import Q,Sum
from django.http import HttpResponseRedirect,HttpResponse
from django.http import JsonResponse

def make_customer(user_id):
    customer,created = Group.objects.get_or_create(name="customer")
    print(customer)
    ct = ContentType.objects.get_for_model(model=orders)
    perms = Permission.objects.filter(content_type=ct)
    customer.permissions.add(perms[0],perms[1],perms[2],perms[3])
    print("premissions:",customer.permissions)
    customer.user_set.add(user_id)

def SignupUser(request,submit):
    content={'message':''}
    if (submit==1):
        if request.method=="POST":
            form = RegistrationForm(request.POST)
            if form.is_valid():
                try:
                    a=form.save()
                    context={'form':form,'success':'SuccessFully Created!!'}
                    # make_customer(a.id)
                    return render(request,'signup.html',context)
                except:
                    print('failed')
        else:
            return render(request,'signup.html')
        context={'form':form}    
        # print(context['pass_mismatch'])
        return render(request,'signup.html',context)

def LoginUser(request):
    if request.method=="POST":
        username=request.POST.get('username')
        password=request.POST.get('password')
        print(username,password)
        try:
            user = authenticate(username=username,password=password)
            login(request,user)
            print('Successful')
            return redirect('/')
        except:
            print('failed')
            content={'message':'Invalid Credential'}
            return render(request,'login.html',content)
    else:
        if logged_in:
            logout(request)
        return render(request,'login.html')

def index(request):
    return render(request,'index.html')

def home_not_anonymous(request):
    return render(request,'Home.html')

def logged_in(request):
    if is_anonymous(request):
        response='false'
    else:
        response='true'
    return HttpResponse(response)

def is_anonymous(request):
    print(request.user.is_anonymous)
    return request.user.is_anonymous

@login_required(login_url="/login")
def home(request):
    return render(request,'Home.html')

def menu(request):
    if not is_anonymous(request):
        all_cat = Category.objects.all()
        content={'all_categories':all_cat}
        return render(request,'Menu.html',content)
    else:
        return render(request,'login.html')

@permission_required("sugar.Menu",login_url="/login")
def add_to_menu(request):
    if not is_anonymous(request):
        all_cat = Category.objects.all()
        if request.method == "POST":
            form = MenuForm(request.POST,request.FILES)
            name=request.POST.get('name')
            already_exist=Menu.objects.filter(name=name)            
            if form.is_valid():
                print("is valid!!!!!!")
                try:
                    if already_exist:
                        print("product already Exist!!!")
                        content={
                            'form':form,
                            'name_anomaly':"Product with similar name already exist",
                            'all_categories':all_cat
                        }
                        return render(request,'Menu.html',content)
                    form.save()
                    print(request.POST.get('is_veg'))
                    content={
                        'is_saved':'True',
                        'all_categories':all_cat
                    }
                    print("Saved!!!!!! ")
                    return render(request,'Menu.html',content)

                except:
                    print("Failed to add to menu!")
                    pass
        else:
            print("nothing!!!!!!!!!!!!!")
            form = MenuForm()
        context={
                'form':form,
                'all_categories':all_cat
        }
        return render(request,'Menu.html',context)
    else:
        return render(request,'login.html')

def to_menu(request,id):
    if not is_anonymous(request):
        cat_id=Category.objects.filter(name=id).first().id
        print('Category Id is:',cat_id)
        menu_objects = Menu.objects.filter(categories=cat_id) 
        user_id=request.user.id
        orders_set=orders.objects.filter(user_name_id=user_id) 
        # orders_set=orders.objects.all()
        not_empty=menu_objects.exists()
        content = {
            'category': id.capitalize(),
            'is_empty':not not_empty,
        }
        if not_empty:
            context={
                'queryset': menu_objects,
                'additional_content': content,
                'orders': orders_set,
            }
            return render(request,'common_menu.html',context)
        else:
            return render(request,'common_menu.html',content)
    else:
        return render(request,'login.html')

def search(request):
    if not is_anonymous(request):
        if request.method=="POST":
            query=request.POST.get('search')
            Menu_query = Q(name__icontains=query)
            result_query = Menu.objects.filter(Menu_query)
            not_empty=result_query.exists()
            order=orders.objects.all()
            content = {
                'search_for': 'Showing result for '+query+' !',
                'category':'Search',
                'is_empty':not not_empty,
            }
            context={
                'queryset': result_query,
                'additional_content': content,
                'orders':order
            }
            if not_empty:
                return render(request,'common_menu.html',context)
            else:
                return render(request,'common_menu.html',content)
        else:
            return redirect("/")
    else:
        return render(request,'login.html')

def orders_cart(request):
    if not is_anonymous(request):
        user_id=request.user.id

        # Deleting an item
        try:
            if request.method=="POST" :
                id=request.POST.get('item_name')
                item=orders.objects.get(product_id_id=id,user_name_id=user_id)
                if request.user.is_staff:
                    item.delete()
        except:
            pass

        # passing reveiw
        # try:
        # form = reviewForm(request.POST)
        # print(form.content)
        if request.method=="POST" :
            form = reviewForm(request.POST)
            content = request.POST.get('content')
            if form.is_valid():
                rev = form.save(commit=False)
                print(rev)
                rev.by = request.user
                # db = review(by=request.user,content=content)
                rev.save()
        # except:
            # pass
        reviews = review.objects.all()
        # print("reviews",reviews.content)
        for rev in reviews:
            print(rev.content)
        filtered_orders=orders.objects.filter(user_name_id=user_id)
        items_in_cart = Menu.objects.filter(id__in=filtered_orders.values('product_id'))
        total_price = 0
        length=0
        for item in filtered_orders:
            product=Menu.objects.get(id=item.product_id_id)
            total_price+=(item.quantity)*(product.price)
            length+=item.quantity
        random_records = Menu.objects.order_by('?')[:10]
        content={
            'random_records':random_records,
            'orders':filtered_orders,
            'cart':items_in_cart,
            'length':length,
            'total_price':total_price,
            'reviews':reviews
        }
        return render(request,'orders.html',content)
    else:
        return render(request,'login.html')

def trial(request):
    if not is_anonymous(request):
        orders_set=orders.objects.all() 
        not_empty=orders_set.exists()
        content = {
            'category': 'Cakes',
            'is_empty':not not_empty,
        }
        if not_empty:
            context={
                'additional_content': content,
                'orders': orders_set,
            }
            return render(request,'trial2.html',context)
        else:
            return render(request,'trial2.html',content)
    else:
        return render(request,'login.html')

def logout_user(request):
    authentication={'user':'','logged_in':False}
    logout(request)
    return redirect('/login')

def update(request,id_of_order):
    if not is_anonymous(request):
        try:
            user_id=request.user.id
            order_no=orders.objects.get(product_id_id=id_of_order,user_name_id=user_id)
            if order_no:
                new_quan=request.GET.get('selectedValue',1)
                try:
                    orders.objects.filter(product_id_id=id_of_order,user_name_id=user_id).update(quantity=new_quan)
                    print("Successfully updated",user_id)
                except:
                    print("unsuccessful!!")
                return JsonResponse({'message': 'View function called successfully'})
        except:
            user_id=request.user.id
            obj_created=orders.objects.create(quantity=1,product_id_id=id_of_order,user_name_id=user_id)
            return JsonResponse({'message': 'View function called successfully; created one'})
    else:
        return render(request,'login.html')

def cart_update(request,id_of_order):
    if not is_anonymous(request):
        try:
            user_id=request.user.id
            order_no=orders.objects.get(product_id_id=id_of_order,user_name_id=user_id)
            if order_no:
                new_quan=request.GET.get('selectedValue',1)
                try:
                    orders.objects.filter(product_id_id=id_of_order).update(quantity=new_quan)
                    print("Successfully updated")
                except:
                    print("unsuccessful!!")
            filtered_orders=orders.objects.filter(user_name_id=user_id)
            items_in_cart = Menu.objects.filter(id__in=filtered_orders.values('product_id'))
            total_price = 0
            length=0
            for item in filtered_orders:
                product=Menu.objects.get(id=item.product_id_id)
                total_price+=(item.quantity)*(product.price)
                length+=item.quantity
            
            response=str(length)+" "+str(total_price)
            return HttpResponse(response)
        except:
            return JsonResponse({'message':'Error Encountered!'})
    else:
        return render(request,'login.html')


# @permission_required("sugar.delete_orders",login_url="/login",raise_exception=True)
def delete(request,id):
    try:
        user_id=request.user.id
        item=orders.objects.get(product_id_id=id,user_name_id=user_id)
        print(item)
        item.delete()
        response = "item successfully deleted"
        print(response)
        return orders_cart(request)
    except:
        print('Failed to delete')
        return HttpResponse()


# @login_required(login_url='/login')
# def review(request):
    


