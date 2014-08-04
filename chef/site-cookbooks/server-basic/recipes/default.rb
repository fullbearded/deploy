node['server-basic']['basic_package'].each do |_package|
  package _package
end

node['server-basic']['users'].each do |_user, _dirs|
  user _user do
    comment "system #{_user}"
    system true
    shell "/bin/false"
  end

  group _user do
    action :create
    system  true
  end

  _dirs.each do |_dir|
    directory _dir do
      owner _user
      group _user
      mode '0755'
      action :create
      recursive true
    end
  end

end

yum_package 'ImageMagick' do
  version '6.5.4.7-7.el6_5'
end
