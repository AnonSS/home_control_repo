class profile::it::yourls {
  - include 
  	package{"php-curl":
		ensure => installed,
	}
}
