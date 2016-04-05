# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box = "hashicorp/precise64"

  config.vm.hostname = "eventex-local.wttd.com"
  config.vm.network :private_network, ip: "192.168.33.10"
  config.vm.network :forwarded_port, guest: 8000, host: 8000

  config.vm.provision "shell", path: "scripts/install-dep.sh"
  config.vm.define "python" do |python|
    python.vm.provision "shell", path: "scripts/setup-env.sh", privileged: false
    python.vm.provision "shell", path: "scripts/runserver.sh", privileged: false
  end
end
