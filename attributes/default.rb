default['nginx']['default_site_enabled']   = false
default['nginx']['default_root'] = '/var/www/html'

default['ssh']['port'] = '2222'
default['http']['port'] = '80'
default['https']['port'] = '443'

default['openssh']['server']['port'] = default['ssh']['port']


#default['openssl']['version'] = '1.0.1f-1ubuntu2'
default['openssl']['version'] = '1.0.1f-1ubuntu2.21'

default['nginx']['site_name'] = 'default.devops.com.tw'
