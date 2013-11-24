from django.conf.urls import patterns, include, url

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

from bitsaa.views import ApiEndpoint

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', '{{ project_name }}.views.home', name='home'),
    # url(r'^{{ project_name }}/', include('{{ project_name }}.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),
    #url(r'^login/',include('auth.urls')),
    url(r'^login/','auth.views.login_user'),
    url(r'^accounts/login/','auth.views.login_user'),
    url(r'^logout/$','auth.views.logout_user'),
    url(r'^home/$','dashboard.views.home'),
    url(r'^profile/$','dashboard.views.profile'),
    url(r'^o/', include('oauth2_provider.urls', namespace='oauth2_provider')),
    url(r'^api/hello', ApiEndpoint.as_view()), 
)
