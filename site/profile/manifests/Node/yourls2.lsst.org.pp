class node::'yourls2.lss.org' {
      file {'/root/README':
    ensure  => file,
    content => 'Welcome to yourls2 server changed',
    owner   => 'root',
  }
}
