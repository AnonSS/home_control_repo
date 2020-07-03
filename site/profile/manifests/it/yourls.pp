class profile::it::yourls {
  	package{"php-curl":
		ensure => installed,
	}  	package{"php":
		ensure => installed,
	}
  	package{"php-mysql":
		ensure => installed,
	}
  	package{"php-fpm":
		ensure => installed,
	}  
  	package{"php-cli":
		ensure => installed,
	}
  	package{"php-common":
		ensure => installed,
	}
  	service {"apachectl":
		ensure => stopped,
	}
nginx::resource::server { 'yourls3.lsst.org':
  listen_port => 81,
  www_root    => '/var/www/yourls3.lsst.org',
}
}
