class role::yourls2_server {
  include profile::base
  include profile::web2
    file {'/root/README':
    ensure  => file,
    content => 'Welcome to yourls2 server changed',
    owner   => 'root',
  }
}
