from django.contrib.auth.decorators import login_required

from django.http import HttpResponse
from django.template import RequestContext, loader

from dashboard.models import UserData
from django.contrib.auth.models import User

@login_required(login_url='/login')
def home(request):
  user=(User.objects.get(username=str(request.user)))
  details=UserData.objects.get(username_id=user.id)
  
  template=loader.get_template("dashboard/home.html")
  context=RequestContext(request,{'username':request.user.username, 'full_name':details.name})
  return HttpResponse(template.render(context))

@login_required(login_url='/login')
def profile(request):
  user=(User.objects.get(username=str(request.user)))
  details=UserData.objects.get(username_id=user.id)

  template=loader.get_template("dashboard/profile.html")
  context=RequestContext(request,{'username':str(user), 'bits_id':details.bits_id, 'name':details.name, 'dob':details.dob, 'address':details.address, 'mobile':details.mobile, 'about_me':details.about_me})
  return HttpResponse(template.render(context))
