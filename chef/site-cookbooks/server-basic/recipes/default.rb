node['server-basic']['basic_directorys'].each do |_dir|
  directory _dir do
    owner 'root'
    group 'root'
    mode '0755'
    action :create
    recursive true
  end
end

node['server-basic']['basic_package'].each do |_package|
  package _package
end