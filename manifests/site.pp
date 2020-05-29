node default {
  file { '/root/README':
    ensure  => file,
    content => 'This is a readme3.',
    owner   => 'root',
  }
}
node 'puppetmasterpo' {
  include role::master_server
  file {'/root/README':
    ensure  => file,
    content => 'Welcome to puppetmasterpo today',
    owner   => 'root',
  }
}
#node /^web/ {
#  include role::app_server
#  include role::web_server
#}
node 'webserver1.lsst.org' {
  include role::web_server
  file {'/root/README':
    ensure  => file,
    content => 'Welcome to webserver1',
    owner   => 'root',
  }
}
node 'yourls2.lsst.org.yaml' {
#  include role::yourls2_server
  file {'/root/README':
    ensure  => file,
    content => 'Welcome to changed again',
    owner   => 'root',
  }
}
