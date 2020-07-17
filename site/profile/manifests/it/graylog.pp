class profile::it::graylog {
  class { 'java' :
     package => 'java-1.8.0-openjdk',
 }

  class { 'mongodb::globals':
     manage_package_repo => true,
	}

  class { 'mongodb::server':
     bind_ip => ['127.0.0.1'],
 }
}
