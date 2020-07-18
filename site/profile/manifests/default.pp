class profile::default {
#  include profile::it::monitoring
# All telegraf configuration came from Hiera
	package { 'nmap':
		ensure => installed,
	}

	package { 'vim':
		ensure => installed,
	}

	package { 'wget':
		ensure => installed,
	}

	# I would like to confirm if there is any particular version of gcc to be installed
	package { 'gcc':
		ensure => installed,
	}

	package { 'xinetd':
		ensure => installed,
	}

	package { 'tcpdump':
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

	package { 'acpid':
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
  Package { ensure => 'installed' }

  $enhancers = [ 'tree', 'sssd', 'realmd', 'oddjob', 'oddjob-mkhomedir', 'adcli', 'samba-common', 'samba-common-tools', 'krb5-workstation', 'openldap-clients', 'policycoreutils-python' ]

  package { $enhancers: }
  # Firewall and security measurements
}
