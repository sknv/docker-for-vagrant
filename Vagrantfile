# -*- mode: ruby -*-
# vi: set ft=ruby :

# For a complete reference, please see the online documentation at https://docs.vagrantup.com.
Vagrant.configure('2') do |config|
  # Every Vagrant development environment requires a box. You can search for boxes at
  # https://vagrantcloud.com/search
  config.vm.box = 'bento/ubuntu-20.04'

  # Create a private network, which allows host-only access to the machine using a specific IP
  config.vm.network 'private_network', ip: '192.168.99.100'

  # Customize the VM
  config.vm.provider 'virtualbox' do |vm|
    vm.cpus = 1 # customize the CPU count for the VM
    vm.memory = 1024 # customize the amount of memory on the VM
  end

  # Enable provisioning with a shell script
  config.vm.provision 'shell', path: 'bootstrap.sh', privileged: false, keep_color: true

  # Sync project folder
  config.vm.synced_folder './', '/vagrant'
end
