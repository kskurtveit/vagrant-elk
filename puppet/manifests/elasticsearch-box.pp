
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

class { 'elasticsearch':
  package_url => 'https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.1.1.noarch.rpm',
  config => {
    'cluster.name' => 'vagrant_cluster',
    'node.name' => 'es_node_0',
    'index' => {
      'number_of_replicas' => '0',
      'number_of_shards' => '1',
    }
  }
}


