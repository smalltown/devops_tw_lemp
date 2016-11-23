#
# Cookbook Name:: lemp
# Recipe:: iptables
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#


include_recipe 'simple_iptables'

# Allow SSH
simple_iptables_rule "ssh" do
  table "nat"
  rule "--proto tcp --dport #{node['ssh']['port']}"
  jump "ACCEPT"
end

# Allow SSH
#simple_iptables_rule "ssh" do
#  rule "--proto tcp --dport #{node['ssh']['port']}"
#  jump "ACCEPT"
#end

# Allow HTTP, HTTPS
simple_iptables_rule "http" do
  table "nat"
  rule [ "--proto tcp --dport #{node['http']['port']}",
         "--proto tcp --dport #{node['https']['port']}" ]
  jump "ACCEPT"
end

# Reject packets other than those explicitly allowed
simple_iptables_policy "INPUT" do
  table "nat"
  policy "DROP"
end
