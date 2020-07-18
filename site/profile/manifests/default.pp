class profile::default {
  include timezone
  include ssh
  include vim
#  include profile::it::monitoring
# All telegraf configuration came from Hiera
  Package { ensure => 'installed' }

  $enhancers = [ 'tree', 'sssd', 'realmd', 'oddjob', 'oddjob-mkhomedir', 'adcli', 'samba-common', 'samba-common-tools', 'krb5-workstation', 'openldap-clients', 'policycoreutils-python' ]

  package { $enhancers: }
  # Firewall and security measurements
}
