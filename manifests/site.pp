node default {
  file { '/root/README':
    ensure => file,
    content => 'This is a readme',
    owner   => 'root',
  }
}
node 'puppetmasterpo.lsst.org' {
  include role::master_server
}
