#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
package 'apache2'

file '/var/www/html/index.html' do
  content "<h2>This is: #{node['name']}</h2><h1>Hello ChefConf2019!!</h1>"
end

service 'apache2' do
  action [ :enable, :start ]
end
