include_recipe 'simple_iptables'

package "java-1.7.0-openjdk-devel"

remote_file "download go server npm" do
  path "#{Chef::Config[:file_cache_path]}/go_server.npm"
  source node[:chef_go][:go_server_url]
  action :create
end

remote_file "download go agent npm" do
  path "#{Chef::Config[:file_cache_path]}/go_agent.npm"
  source node[:chef_go][:go_agent_url]
  action :create
end

rpm_package 'go_server' do
  source "#{Chef::Config[:file_cache_path]}/go_server.npm"
  action :install
end

rpm_package 'go_agent' do
  source "#{Chef::Config[:file_cache_path]}/go_agent.npm"
  action :install
end

template "/etc/default/go-agent" do
  source "go-agent.erb"
  mode "0644"
  owner "root"
  group "root"
end

template "/etc/default/go-server" do
  source "go-server.erb"
  mode "0644"
  owner "root"
  group "root"
end

simple_iptables_rule "http" do
  rule [ "--proto tcp --dport 8153"]
  jump "ACCEPT"
end

execute "start go server" do
  command 'service go-server start'
end

# why need update hostname to /etc/hosts ?
# reason: https://gist.github.com/huhongda/814ee91f09aecae267d7
execute 'update hostname' do
  command 'echo "127.0.0.1 `hostname`" >> /etc/hosts'
end

execute "start go agent" do
  command 'service go-agent start'
end
