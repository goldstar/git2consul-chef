#
# Cookbook Name:: git2consul
# Recipe:: default
#
# Copyright (C) 2017 Goldstar Events, Inc.
#

include_recipe 'git'
include_recipe 'nodejs'
include_recipe 'nodejs::npm'


nodejs_npm 'git2consul'

user node['git2consul']['user'] do
  action :create
end

group node['git2consul']['group'] do
  action :create
end


directory node['git2consul']['config_dir'] do
  action :create
  mode 0o700
  user node['git2consul']['user']
  group node['git2consul']['group']
end

directory node['git2consul']['log_dir'] do
  action :create
  mode 0o700
  user node['git2consul']['user']
  group node['git2consul']['group']
end

# Set up our service depending on the init service
include_recipe "git2consul::#{node['git2consul']['init_style']}_service"

template '/etc/git2consul/config.json' do
  action :create
  user node['git2consul']['user']
  group node['git2consul']['group']
  notifies :restart, 'service[git2consul]', :delayed
end
