class profile::web {
  package {'httpd':
    ensure => present,
  }
}
  service { 'httpd':
    ensure => 'running',
    enable => 'true',
  }
