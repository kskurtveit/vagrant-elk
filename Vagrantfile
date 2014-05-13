
Vagrant.configure('2') do |config|

  config.vm.define :elasticsearch do |e|
    e.vm.box      = 'centos_6.5-puppet'
    e.vm.provider "virtualbox" do |v|
      v.customize ["modifyvm", :id, "--cpus", "1"]
      v.customize ["modifyvm", :id, "--memory", "1024"]
    end
    e.vm.network :private_network, ip: "10.211.55.11"
    e.vm.hostname = 'elasticsearch'
    e.vm.provision :puppet do |puppet|
      puppet.manifests_path = "puppet/manifests"
      puppet.module_path = "puppet/modules"
      puppet.manifest_file  = 'elasticsearch-box.pp'
      puppet.options = "--verbose"
    end
  end

  config.vm.define 'logstash-box' do |l|
    l.vm.box      = 'centos_6.5-puppet'
    l.vm.provider "virtualbox" do |v|
      v.customize ["modifyvm", :id, "--cpus", "1"]
      v.customize ["modifyvm", :id, "--memory", "1024"]
    end
    l.vm.network :private_network, ip: "10.211.55.22"
    l.vm.hostname = 'logstash'
    l.vm.provision :puppet do |puppet|
      puppet.manifests_path = "puppet/manifests"
      puppet.module_path = "puppet/modules"
      puppet.manifest_file  = 'logstash-box.pp'
      puppet.options = "--verbose"
    end
  end

  config.vm.define 'kibana-box' do |k|
    k.vm.box      = 'centos_6.5-puppet'
    k.vm.provider "virtualbox" do |v|
      v.customize ["modifyvm", :id, "--cpus", "1"]
      v.customize ["modifyvm", :id, "--memory", "1024"]
    end
    k.vm.network :private_network, ip: "10.211.55.33"
    k.vm.hostname = 'kibana'
    k.vm.provision :puppet do |puppet|
      puppet.manifests_path = "puppet/manifests"
      puppet.module_path = "puppet/modules"
      puppet.manifest_file  = 'kibana-box.pp'
      puppet.options = "--verbose"
    end
  end

end
