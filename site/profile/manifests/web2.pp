class profile::web2 {
  package {'httpd':
    ensure => present,
}
  service { 'httpd':
    ensure => 'running',
    enable => 'true',
}
  file {'/root/README':
    ensure  => file,
    content => 'Welcome to web2',
    owner   => 'root',
  }
}
