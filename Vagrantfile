# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "chad-thompson-VAGRANTSLASH-ubuntu-trusty64-gui"
  config.vm.synced_folder "shared", "/opt/vagrant_data"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = "2096"
    vb.cpus = 2
  end
  config.vm.define "masterAnsibleBrad" do |masterAnsible|
    masterAnsible.vm.hostname = "bradleyjpMasterAnsible.qac.local"
    masterAnsible.vm.network "public_network", ip: "192.168.1.107"
    config.vm.provision "shell", path: "masterBootstrap.sh"
  end

  config.vm.define "agentAnsibleBrad" do |agentAnsible|
    agentAnsible.vm.hostname = "bradleyjpAgentAnsible.qac.local"
    agentAnsible.vm.network "public_network", ip: "192.168.1.108"
    config.vm.provision "shell", path: "agentBootstrap.sh"
  end
end
