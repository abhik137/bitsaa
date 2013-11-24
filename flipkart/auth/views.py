from django.contrib.auth import authenticate, login, logout

from django.http import HttpResponse,HttpResponseRedirect
from django.template import RequestContext, loader

import requests
import json
#from pprint import pprint

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

def oauth(request):
    return HttpResponseRedirect("http://localhost:8000/o/authorize?client_id=a-=lnCHNzM5fg1Lepn_dloC1PJZcXvtzK2ZdnB=N&response_type=code")

def oauth_exchange(request):
    if request.GET.get('code') != None:
        a_code = request.GET.get('code')
        payload = {
                    'code':'', 
                    'client_id':'a-=lnCHNzM5fg1Lepn_dloC1PJZcXvtzK2ZdnB=N',
                    'client_secret':'jFvcLzg:qkpFFio-GI5qy5O7._W1jqIwRnX5PQJRbf.0A?6yICLXjdVmUs=LRA;HRsGhrwUNYdr@yGKOUrO-;Q@cm!ZOFLXp7:bwsMP0qPlZgknKazhQt.899nyIXVbW',
                    'redirect_uri':'http://localhost:8080/keyexchange/',
                    'grant_type':'authorization_code',
                    }
        payload['code']=a_code
        r = requests.post("http://localhost:8000/o/token/", data=payload)
    #    return HttpResponseRedirect("http://localhost:8080/profile")
    #    return HttpResponse(pprint(payload))
    #    return HttpResponse(payload['redirect_uri'])
    #    return HttpResponse(r.status_code)
        t = json.loads(r.text)  # converts json response into a python dict
        final(t)
        return HttpResponse('') #TODO:once u get the token, write the logic to log the user in 'final', instead of this
        # TODO:After logging the user in redirect him to profile/home page

    else:
        return HttpResponse("Error!") #TODO:replace with a more appropriate error response

# TODO:Handles the token and authenticates/logs in the user
def final(t):
    ac_token = t['access_token']
    tk_type = t['token_type']
    life = t['expires_in']
    refresh_tk = t['refresh_token']
    scope = t['scope']

    return HttpResponse(ac_token)