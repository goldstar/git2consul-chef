node.default['git2consul']['config_dir'] = '/etc/git2consul'
node.default['git2consul']['local_store'] = '/var/lib/git2consul_cache'
node.default['git2consul']['log_dir'] = '/var/log/git2consul'
node.default['git2consul']['init_style'] = node['init_package']
node.default['git2consul']['path_to_module'] = '/usr/lib/node_modules/git2consul'
node.default['git2consul']['user'] = 'git2consul'
node.default['git2consul']['group'] = 'git2consul'

# Logging
node.default['git2consul']['log_streams'] = [
  {
    'level': 'trace',
    'stream': 'process.stderr'
  },
  {
    'debug': 'debug',
    'type': 'rotating-file',
    'path': "#{node['git2consul']['log_dir']}/debug.log"
  }
]

# List of 
node.default['git2consul']['repositories'] = []

# Consul Endpoint
node.default['git2consul']['endpoint'] = '127.0.0.1'
node.default['git2consul']['port'] = '8500'
