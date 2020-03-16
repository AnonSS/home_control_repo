class profile::web {
  package {'httpd':
    ensure => present,
  }
}
