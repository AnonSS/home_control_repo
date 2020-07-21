class profile::it::grafana {
	class { 'grafana': 
		version => '6.1.0'
	}

	firewalld_port { 'Grafana Main Port':
		ensure   => present,
		port     => '3000',
		protocol => 'tcp',
		require => Service['firewalld'],
	}
}
