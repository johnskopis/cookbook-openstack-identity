name             'openstack-identity'
maintainer       'openstack-chef'
maintainer_email 'opscode-chef-openstack@googlegroups.com'
license          'Apache 2.0'
description      'The OpenStack Identity service Keystone.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '11.0.1'

recipe           'openstack-identity::client', 'Install packages required for keystone client'
recipe           'openstack-identity::server', 'Installs and Configures Keystone Service'
recipe           'openstack-identity::registration', 'Adds user, tenant, role and endpoint records to Keystone'

%w{ ubuntu fedora redhat centos suse }.each do |os|
  supports os
end

depends          'openstack-common', '>= 11.0.0'
