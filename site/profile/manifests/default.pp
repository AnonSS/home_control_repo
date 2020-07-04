class profile::default {
#  include ssh
#  include profile::it::monitoring
  # All telegraf configuration came from Hiera
  Package { ensure => 'installed' }

  $enhancers = [ 'sssd', 'realmd', 'oddjob', 'oddjob-mkhomedir', 'adcli', 'samba-common', 'samba-common-tools', 'krb5-workstation', 'openldap-clients', 'policycoreutils-python' ]

  package { $enhancers: }
  # Firewall and security measurements
  class { 'firewalld':
    service_ensure => 'running',
    default_zone   => 'public',
  }

  firewalld_zone { 'public':
    ensure  => present,
    target  => 'DROP',
    sources => [
      '139.229.136.0/24',
      '139.229.162.0/24',
      '140.252.32.0/22',
      '140.252.90.64/26',  #  VPN
      '140.252.115.0/24',  # Steward Observatory
      '140.252.201.0/24',  # DMZ
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