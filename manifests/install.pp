class mongodb::install {
    apt::source { 'mongo':
        location => 'http://repo.mongodb.org/apt/ubuntu',
        release => 'precise/mongodb-org/3.0',
        repos => 'multiverse',
        key => '7F0CEB10',
        key_server => 'hkp://keyserver.ubuntu.com:80',
        include_src => false,
    }

    package { "mongodb-org":
	ensure => present,
    }
}
