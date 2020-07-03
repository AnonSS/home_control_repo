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
nginx::resource::server { 'yourls.lsst.org':
  www_root => '/var/www/yourls.lsst.org',
}
}
