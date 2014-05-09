
Exec {
  path => ['/usr/sbin', '/usr/bin', '/sbin', '/bin']
}

# --- Packages -----------------------------------------------------------------

class { 'kibana3':
  elasticsearch_host  => '192.168.11.11',
  elasticsearch_index => 'vagrant-index',
  elasticsearch_port  => '9200',
}
