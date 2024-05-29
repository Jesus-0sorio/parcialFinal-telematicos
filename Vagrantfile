# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|  
  config.vm.define :server do |server|
    server.vm.box = "bento/ubuntu-22.04"
    server.vm.network "private_network", ip: "192.168.50.3"
    server.vm.hostname = "server"
    server.vm.synced_folder "shared", "/shared"
  end
end
