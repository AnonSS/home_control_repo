class profile::web {
  package {'httpd':
    ensure => present,
}
	package { 'tcpdump':
		ensure => installed,
	}
  
  service { 'httpd':
    ensure => 'running',
    enable => 'true',
 }
} 

