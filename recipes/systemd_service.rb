template '/etc/systemd/system/git2consul.service' do
  source 'systemd.conf.erb'
  owner 'root'
  group 'root'
  mode 0o755
end

service 'git2consul' do
  provider Chef::Provider::Service::Systemd
  action :enable, :start
end
