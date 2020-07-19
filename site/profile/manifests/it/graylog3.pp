class profile::it::graylog3 {
	class { 'java' :
		package => 'java-1.8.0-openjdk',
	}

class {'mongodb::globals':
  manage_package_repo => true,
  version             => '3.6',
}

class {'mongodb::server':
  auth => true,
}

mongodb::db { 'testdb':
  user          => 'user1',
  password_hash => 'a15fbfca5e3a758be80ceaf42458bcd8',
}
}  
