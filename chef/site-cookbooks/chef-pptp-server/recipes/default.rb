{ "/tmp/pptpd.sh" => "pptpd.sh.erb" }.each do |dest, src|
  template dest do
    source src
    mode 0755
    owner "root"
    group "root"
  end
end

execute 'install pptpd' do
  command "/bin/bash /tmp/pptpd.sh"
end


p "############## Account #############"
node[:chef_pptp_server][:client_accts].each do |user, pass|
  p "VPN service is installed, your VPN username is #{user}, VPN password is #{pass}"
end
p "#####################################"
