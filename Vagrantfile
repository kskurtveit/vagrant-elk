# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure('2') do |config|

  config.vm.define 'elasticsearch-box' do |e|

    e.vm.hostname = 'elasticsearch-box'
    e.vm.box      = 'centos_6.5'
    e.vm.box_url  = 'https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box'

    e.vm.network :private_network, ip: "192.168.11.11"

    e.vm.provision :puppet do |puppet|
      puppet.manifests_path = 'puppet/manifests'
      puppet.module_path    = 'puppet/modules'
      puppet.manifest_file  = 'elasticsearch-box.pp'
    end

    e.vm.provider "virtualbox" do |v|
      v.customize ["modifyvm", :id, "--cpus", "1"]
      v.customize ["modifyvm", :id, "--memory", "1024"]
    end

  end

  config.vm.define 'kibana-box' do |e|

    e.vm.hostname = 'kibana-box'
    e.vm.box      = 'centos_6.5'
    e.vm.box_url  = 'https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box'

    e.vm.network :private_network, ip: "192.168.22.22"

    e.vm.provision :puppet do |puppet|
      puppet.manifests_path = 'puppet/manifests'
      puppet.module_path    = 'puppet/modules'
      puppet.manifest_file  = 'kibana-box.pp'
    end

    e.vm.provider "virtualbox" do |v|
      v.customize ["modifyvm", :id, "--cpus", "1"]
      v.customize ["modifyvm", :id, "--memory", "1024"]
    end

  end

  config.vm.define 'logstash-box' do |e|

    e.vm.hostname = 'logstash-box'
    e.vm.box      = 'centos_6.5'
    e.vm.box_url  = 'https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box'

    e.vm.network :private_network, ip: "192.168.33.33"

    e.vm.provision :puppet do |puppet|
      puppet.manifests_path = 'puppet/manifests'
      puppet.module_path    = 'puppet/modules'
      puppet.manifest_file  = 'logstash-box.pp'
    end

    e.vm.provider "virtualbox" do |v|
      v.customize ["modifyvm", :id, "--cpus", "1"]
      v.customize ["modifyvm", :id, "--memory", "1024"]
    end

  end


end
