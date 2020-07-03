class profile::it::yourls {
  - include 
  	package{"sqlite":
		ensure => installed,
	}
}
