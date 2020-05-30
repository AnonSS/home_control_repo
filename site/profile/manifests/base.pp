class profile::base {
# include profile::web
  user {'admin':
    ensure => present
  }
classes:
  - 'timezone'
  package { 'git':
		ensure => installed,
	}
  package { 'tcpdump':
		ensure => installed,
	}
  package { 'vim':
		ensure => installed,
	}	
  package { 'openssl':
		ensure => installed,
	}

	package { 'openssl-devel':
		ensure => installed,
	}

	package { 'telnet':
		ensure => installed,
	}

	package { 'lvm2':
		ensure => installed,
	}
	
	package { 'bash-completion':
		ensure => installed,
	}

	package { 'tree':
		ensure => installed,
	}

	package { 'sudo':
		ensure => installed,
	}
}
