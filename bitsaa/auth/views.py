from django.contrib.auth import authenticate, login, logout

from django.http import HttpResponse,HttpResponseRedirect
from django.template import RequestContext, loader




def login_user(request):

    state = "Please log in below..."
    username = password = ''

    next = ""

    if request.GET:  
        next = request.GET['next']

    if request.POST:
        username = request.POST['username']
        password = request.POST['password']

        user = authenticate(username=username, password=password)
        if user is not None:
            if user.is_active:
                login(request, user)
                state = "You're successfully logged in!"
                if next == "":
                    return HttpResponseRedirect('/home')
                else:
                    return HttpResponseRedirect(next)
            else:
                state = "Your account is not active, please contact the site admin."
        else:
            state = "Your username and/or password were incorrect."

    template=loader.get_template('auth/auth.html')
    context=RequestContext(request,{'state':state,'username':username,'next':next})
    return HttpResponse(template.render(context))


'''
def login_user(request):
    state = "Please log in below..."
    username = password = ''
    if request.POST:
        username = request.POST.get('username')
        password = request.POST.get('password')

        user = authenticate(username=username, password=password)
        if user is not None:
            if user.is_active:
                login(request, user)
                next=""
                if request.GET:  
                    next = request.GET['next']
                if next == "":
                    return HttpResponseRedirect('/home/')
                else:
                    return HttpResponseRedirect(next)
            else:
                state = "Your account is not active, please contact the site admin."
        else:
            state = "Your username and/or password were incorrect."

    template=loader.get_template('auth/auth.html')
    context=RequestContext(request,{'state':state,'username':username})
    return HttpResponse(template.render(context))
'''

def logout_user(request):
    state = "Logged Out"
    logout(request)
    template=loader.get_template('auth/auth.html')
    context=RequestContext(request,{'state':state,'username':''})
    return HttpResponse(template.render(context))
