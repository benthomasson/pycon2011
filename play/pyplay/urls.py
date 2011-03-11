from django.conf.urls.defaults import patterns, url, include

handler404 = 'django.views.defaults.page_not_found'
handler500 = 'django.views.defaults.server_error'

urlpatterns = patterns('pyplay.views',
   url(r'^$', 'index'),
)




