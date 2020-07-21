class profile::default {
#  include profile::it::monitoring
# All telegraf configuration came from Hiera
include ssh
include augeas
  Package { ensure => 'installed' }

  $enhancers = [ 'tree', 'sssd', 'realmd', 'oddjob', 'oddjob-mkhomedir', 'adcli',
  'samba-common', 'samba-common-tools', 'krb5-workstation', 'openldap-clients', 'policycoreutils-python',
  'tcpdump', 'openssl', 'openssl-devel', 'telnet', 'acpid', 'lvm2', 'bash-completion', 'sudo', 'vim' ]

  package { $enhancers: }
  # Firewall and security measurements
	file_line { 'SELINUX=permissive':
		path  => '/etc/selinux/config',
		line => 'SELINUX=enforce',
		match => '^SELINUX=+',
	}  
}
