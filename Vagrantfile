# -*- mode: ruby -*-
# vi: set ft=ruby :
#goss_version="v0.3.13"

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = "1024"
  end

  #config.vm.network "forwarded_port", guest: 443, host: 8443
  #config.vm.network "forwarded_port", guest: 80,  host: 8080

  # config.vm.provision "shell", inline: <<-SHELL
  #   curl -s -L https://github.com/aelsabbahy/goss/releases/download/#{goss_version}/goss-linux-amd64 -o /usr/local/bin/goss
  #   chmod a+x /usr/local/bin/goss
  # SHELL

  config.vm.provision "ansible" do |ansible|
    ansible.verbose = "vv"
    #ansible.galaxy_role_file = "requirements.yml"
    #ansible.galaxy_roles_path = "./tests/roles/"
    ansible.playbook = "tests/vagrant.yml"
    ansible.raw_arguments = ["--diff"]
  end
  # config.vm.provision "file", source: "./tests/goss.yml", destination: "/tmp/goss.yml"
  # config.vm.provision "shell", inline: "goss -g /tmp/goss.yml validate --retry-timeout 60s --sleep 10s"
end
