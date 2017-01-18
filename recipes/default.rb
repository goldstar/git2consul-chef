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
