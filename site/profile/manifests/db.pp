class profile::db {
    package { 'MariaDB-server':
        ensure => installed,
    }
    service { 'mysql':
        ensure => running,
        enable => true,
    }
}
