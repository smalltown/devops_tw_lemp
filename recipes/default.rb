#
# Cookbook Name:: lemp
# Recipe:: default
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "lemp::nginx"
include_recipe "lemp::mysql"
#include_recipe "lemp::openssh"
#include_recipe "lemp::iptables"
