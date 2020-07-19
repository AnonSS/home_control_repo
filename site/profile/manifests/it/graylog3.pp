class profile::it::graylog3 {
	class { 'java' :
		package => 'java-1.8.0-openjdk',
	}
class {'mongodb::globals':
  manage_package_repo => true,
#  version             => '3.6',
 }
class { 'mongodb::server':
  bind_ip => ['127.0.0.1'],
 }
 }  
