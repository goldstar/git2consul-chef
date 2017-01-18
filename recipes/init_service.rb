template '/etc/init/git2consul.conf' do
  source 'init.conf.erb'
  owner 'root'
  group 'root'
  mode 0o755
end

service 'git2consul' do
  provider Chef::Provider::Service::Upstart
  action [:enable, :start]
end
