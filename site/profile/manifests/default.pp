class profile::default {
#  include ssh
#  include profile::it::monitoring
  # All telegraf configuration came from Hiera
  Package { ensure => 'installed' }

  $enhancers = [ 'sssd', 'realmd', 'oddjob', 'oddjob-mkhomedir', 'adcli', 'samba-common', 'samba-common-tools', 'krb5-workstation', 'openldap-clients', 'policycoreutils-python' ]

  package { $enhancers: }
  # Firewall and security measurements
  class { 'firewalld':
    service_ensure => 'stopped',
    default_zone   => 'public',
  }

  firewalld_zone { 'public':
    ensure  => present,
    target  => 'DROP',
    sources => [
      '192.168.0.0/24',
    ],
  }

  firewalld_service { 'Enable SSH':
    ensure  => 'present',
    service => 'ssh',
  }

  firewalld_service { 'Enable DHCP':
    ensure  => 'present',
    service => 'dhcpv6-client',
  }

  exec{'enable_icmp':
    provider => 'shell',
    command  => '/usr/bin/firewall-cmd --add-protocol=icmp --permanent && /usr/bin/firewall-cmd --reload',
    require  => Class['firewalld'],
    onlyif   => "[[ \"\$(firewall-cmd --list-protocols)\" != *\"icmp\"* ]]"
  }
}
