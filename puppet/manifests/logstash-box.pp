
Exec {
  path => ['/usr/sbin', '/usr/bin', '/sbin', '/bin']
}

# --- Preinstall Stage ---------------------------------------------------------

stage { 'preinstall':
  before => Stage['main']
}

class install_prereqs {
  package { jdk:
    ensure  => present,
    name => 'java-1.7.0-openjdk',
  } 

  package { wget:
    ensure  => present,
    name => 'wget',
  }
}

class { 'install_prereqs':
  stage => preinstall
}

# --- Packages -----------------------------------------------------------------

class { 'logstash':
  require => Package['wget'],
  package_url => 'https://download.elasticsearch.org/logstash/logstash/packages/centos/logstash-1.4.1-1_bd507eb.noarch.rpm',
}
