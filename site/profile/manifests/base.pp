class profile::base {
  include profile::web
  user {'admin':
    ensure => present
  }
  package { 'tcpdump':
		ensure => installed,
	}
}
