#
# Cookbook:: myhaproxy
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

node.default['haproxy']['members'] = [
{
'hostname' => 'ip-10-50-0-131.ap-southeast-2.compute.internal',
'ipaddress' => '10.50.0.131',
'port' => 80,
'ssl_port' => 80
}]
include_recipe "haproxy::manual"
