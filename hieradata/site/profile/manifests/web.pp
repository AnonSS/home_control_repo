class profile::web {
  package {'httpd':
    ensure => present,
}
  service { 'httpd':
    ensure => 'running',
    enable => 'true',
 }
yumrepo { 'mariadb-products':
  ensure    => 'present',
  name      => 'mariadb',
  descr     => 'MariaDB',
  baseurl   => 'http://yum.mariadb.org/10.2/centos7-amd64',
  gpgkey    => 'https://yum.mariadb.org/RPM-GPG-KEY-MariaDB',
  enabled   => '1',
  gpgcheck  => '1',
  target    => '/etc/yum.repos.d/mariadb.repo',
}
yumrepo { 'PHP72-products':
  ensure    => 'present',
  name      => 'remi-php72',
  descr     => 'remi-php72',
  #baseurl   => 'http://rpms.remirepo.net/enterprise/7/php72/$basearch/',
  mirrorlist => 'http://cdn.remirepo.net/enterprise/7/php72/mirror',
  gpgkey    => 'https://rpms.remirepo.net/RPM-GPG-KEY-remi',
  enabled   => '1',
  gpgcheck  => '1',
  target    => '/etc/yum.repos.d/php72.repo',
}
yumrepo { 'epel-products':
  ensure    => 'present',
  name      => 'epel',
  descr     => 'epel',
  baseurl   => 'http://download.fedoraproject.org/pub/epel/7/$basearch',
  gpgkey    => 'https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-7',
  enabled   => '1',
  gpgcheck  => '1',
  target    => '/etc/yum.repos.d/epel.repo',
} 
} 
