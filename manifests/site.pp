node default {
  file { '/root/README':
    ensure  => file,
    content => 'This is a readme2.',
    owner   => 'root',
  }
}
node 'puppetmasterpo.lsst.org' {
  include role::master_server
  file {'/root/README':
    ensure => file,
    content => 'Welcome to ',
    owner => 'root',
  }
}
node /^web/ { 
  include role::app_server
}
node 'webserver1.lsst.org' {
yumrepo { 'puppetrepo-products':
  ensure    => 'present',
  name      => 'puppetrepo-products',
  descr     => 'Puppet Labs Products El 7 - $basearch',
  baseurl   => 'http://myownmirror',
  gpgkey    => 'http://myownmirror',
  enabled   => '1',
  gpgcheck  => '1',
  target    => '/etc/yum.repo.d/puppetlabs.repo',
}
}
