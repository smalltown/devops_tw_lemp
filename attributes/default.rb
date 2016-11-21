default['nginx']['default_site_enabled']   = false
default['nginx']['default_root'] = '/var/www/html'

default['ssh']['port'] = '2222'
default['http']['port'] = '80'
default['https']['port'] = '443'

default['openssh']['server']['port'] = default['ssh']['port']
