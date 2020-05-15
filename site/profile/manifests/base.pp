class profile::base {
  user {'admin':
    ensure => present
  }
  package { 'tcpdump':
		ensure => installed,
	}
}
