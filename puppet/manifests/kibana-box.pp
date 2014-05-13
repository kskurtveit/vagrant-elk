
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


class { 'kibana':
  elasticsearch_url  => 'http://10.211.55.11:9200',
  webserver => 'apache',
  install_url => 'https://download.elasticsearch.org/kibana/kibana/kibana-3.0.1.zip',
}

