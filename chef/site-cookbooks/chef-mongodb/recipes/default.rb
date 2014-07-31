#
# Cookbook Name:: ep-db
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'mongodb::10gen_repo'
include_recipe 'mongodb::default'

mongodb_instance 'mongod' do
  dbpath node['mongodb']['config']['dbpath']
  logpath node['mongodb']['config']['logpath']
  pidfilepath node['mongodb']['config']['pidfilepath']
end

service 'mongod' do
  supports :status => true, :restart => true, :reload => true
  action :start
end
