class profile::it::graylog3 {
include mongodb::server
	class { 'java' :
		package => 'java-1.8.0-openjdk',
	}
}  
