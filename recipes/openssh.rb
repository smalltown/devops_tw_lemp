#
# Cookbook Name:: lemp
# Recipe:: openssh
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'openssh'

service 'ssh' do
  action :restart
end
