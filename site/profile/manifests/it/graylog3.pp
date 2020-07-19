class profile::it::graylog3 {
class {'mongodb::globals':
  manage_package_repo => true,
  version             => '3.6',
}
-> class {'mongodb::client': }
-> class {'mongodb::server': }
}
