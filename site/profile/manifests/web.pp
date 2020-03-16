class profile::web {
  package {'httpd':
    ensure => present,
  }
}
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
