#
# Cookbook Name:: lemp
# Recipe:: openssl
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

apt_package 'openssl' do
  version node['openssl']['version']
  options '--force-yes'  
  action :install
end
