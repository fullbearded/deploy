default[:chef_pptp_server][:client_accts] = {
	"vpn" => "abc123",
	"user2" => "pass2"
}

default[:chef_pptp_server][:arch] = node['os_version'].to_s.split('.').last
default[:chef_pptp_server][:source_url] = "http://poptop.sourceforge.net/yum/stable/packages/pptpd-1.4.0-1.el6.#{default[:chef_pptp_server][:arch]}.rpm"


