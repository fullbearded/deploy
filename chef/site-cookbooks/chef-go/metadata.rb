name 'chef-go'
maintainer 'jerry'
maintainer_email 'jerrery520@gmail.com'
description 'this is a delivery software for deploy script'
version '0.0.1'

recipe 'chef-go', 'install go'

depends 'yum'
depends 'simple_iptables'
