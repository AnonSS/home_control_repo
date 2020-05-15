class profile::web {
  include profile::base
  package {'httpd':
    ensure => present,
}
  service { 'httpd':
    ensure => 'running',
    enable => 'true',
 }
} 
