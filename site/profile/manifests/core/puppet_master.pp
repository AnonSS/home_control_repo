class profile::core::puppet_master {
  file{ '/root/README':
    ensure => file,
    content => "Welcome to ${fqdn},\n BIOS release date:${bios_release_date} this is a Puppet Master Server\n",
  }
}
