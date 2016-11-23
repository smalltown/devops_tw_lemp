#
# Cookbook Name:: lemp
# Recipe:: nginx
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

# install php-fpm
include_recipe 'php-fpm'

# install nginx
include_recipe 'nginx'

template "#{node['nginx']['dir']}/sites-available/default" do
  source 'default-site.erb'
  owner  'root'
  group  node['root_group']
  mode   '0644'
  notifies :reload, 'service[nginx]', :delayed
end

directory node['nginx']['default_root'] do
  owner node['nginx']['group']
  user node['nginx']['user']
  recursive true
end

nginx_site 'default' do
  enable true
end

template "#{node['nginx']['default_root']}/index.html" do
  source 'index.html.erb'
  owner node['nginx']['group']
  user node['nginx']['user']
end
