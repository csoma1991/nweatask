#
# Cookbook Name:: create
# Recipe:: default
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "apt"


include_recipe "nginx::repo"
include_recipe "nginx::default"

nginx_site '000-default' do
  enable false
end

nginx_site 'mysite.local' do
  template 'nginx.conf.erb'
end

cookbook_file "/usr/share/nginx/www/index.html" do
  source "index.html"
  mode "0644"
end
