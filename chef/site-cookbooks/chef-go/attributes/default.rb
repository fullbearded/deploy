default[:chef_go][:go_server_url] = 'http://download.go.cd/gocd-rpm/go-server-14.2.0-377.noarch.rpm'
default[:chef_go][:go_agent_url] = 'http://download.go.cd/gocd-rpm/go-agent-14.2.0-377.noarch.rpm'


default[:go][:server][:http_port]    = "8153"
default[:go][:server][:https_port]   = "8154"
default[:go][:server][:max_mem]      = "2048m"
default[:go][:server][:min_mem]      = "1024m"
default[:go][:server][:max_perm_gen] = "400m"

default[:go_agent][:go_server_host] = 'localhost'
default[:go_agent][:go_server_port] = 8153
default[:java][:home] = '/usr/lib/jvm/java'

