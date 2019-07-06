# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "devBox" do |devBox|
    devBox.vm.box = "bento/ubuntu-18.10"
    devBox.vm.provision "shell", path: "devBox.sh"
  end
end
