class profile::it::graylog2 {
	class { 'java' :
		package => 'java-1.8.0-openjdk',
	}
class { '::graylog::repository':
  version => '3.0'
}
class { '::graylog::server':
  config  => {
    is_master                                  => true,
    node_id_file                               => '/etc/graylog/server/node-id',
    password_secret                            => lookup("graylog_server_password_secret"),
    root_username                              => 'admin',
    root_password_sha2                         => lookup("graylog_server_root_password_sha2"),
    root_timezone                              => 'UTC',
    allow_leading_wildcard_searches            => true,
    allow_highlighting                         => true,
    http_bind_address                          => '0.0.0.0:9000',
    http_external_uri                          => 'https://${graylog_canonical_name}:9000',
    http_enable_tls                            => true,
    http_tls_cert_file                         => "${ssl_config_dir}/${ssl_graylog_cert_filename}",
    http_tls_key_file                          => "${ssl_config_dir}/${ssl_graylog_key_filename}",
    http_tls_key_password                      => "${tls_cert_pass}",
    rotation_strategy                          => 'time',
    retention_strategy                         => 'delete',
    elasticsearch_max_time_per_index           => '1d',
    elasticsearch_max_number_of_indices        => '30',
    elasticsearch_shards                       => '4',
    elasticsearch_replicas                     => '1',
    elasticsearch_index_prefix                 => 'graylog',
    elasticsearch_hosts                        => '127.0.0.1',
    mongodb_uri                                => '127.0.0.1',
  },
}
}
