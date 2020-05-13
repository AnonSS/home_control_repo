node default {
  file { '/root/README':
    ensure  => file,
    content => 'This is a readme2.',
    owner   => 'root',
  }
}
node 'puppetmasterpo.lsst.org' {
  include role::master_server
  file {'/root/README':
    ensure => file,
    content => 'Welcome to ',
    owner => 'root',
  }
}
node /^web/ { 
  include role::app_server
}
node 'webserver1.lsst.org' {
  include role::db_server
}
