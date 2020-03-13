node default {
  file { '/root/README':
    ensure => file,
    content => 'This is a readme, so read me',
    owner   => 'root',
  }
}
