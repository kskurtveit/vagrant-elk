
$elasticsearch_ip = '192.168.11.11'

Exec {
  path => ['/usr/sbin', '/usr/bin', '/sbin', '/bin']
}


# --- Packages -----------------------------------------------------------------

class { 'elasticsearch':
  java_install => true,
  version => '1.1.1',
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
  
