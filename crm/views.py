from django.shortcuts import render,HttpResponse,redirect
from rbac.models import User
from rbac.service.perssions import initial_session

# Create your views here.
def login(request):
    if request.method=="POST":
        user=request.POST.get('user')
        pwd=request.POST.get('pwd')
        user=User.objects.filter(name=user,pwd=pwd).first()
        if user:
            request.session['user_id']=user.pk
            initial_session(user,request)
            menu_permission_list=request.session.get('menu_permission_list')
            first_show = menu_permission_list[0][0]
            print("在这里",first_show)
            # return HttpResponse('登录成功')
            return redirect(first_show)
    return render(request, 'login.html')
