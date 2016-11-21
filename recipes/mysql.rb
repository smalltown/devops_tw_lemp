#
# Cookbook Name:: lemp
# Recipe:: mysql
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

mysql_service 'mysql_db' do
  port '3306'
  version '5.5'
  initial_root_password 'root'
  action [:create, :start]
end
