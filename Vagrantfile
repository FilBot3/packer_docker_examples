# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/centos-7"
  config.vm.network 'forwarded_port', guest: 5000, host: 5000
  config.vm.provision 'shell', inline: %(
    sudo yum install -y vim
    sudo yum remove -y docker \
      docker-client \
      docker-client-latest \
      docker-common \
      docker-latest-logrotate \
      docker-logrotate \
      docker-selinux \
      docker-engine-selinux \
      docker-engine
    sudo yum install -y yum-utils \
      device-mapper-persistent-data \
      lvm2
    sudo yum-config-manager \
      --add-repo \
      https://download.docker.com/linux/centos/docker-ce.repo
    sudo yum install -y docker-ce
    sudo systemctl start docker
    sudo systemctl enable docker
    sudo usermod -aG docker vagrant
    sudo yum install -y epel-release
    sudo yum install -y python-pip
    sudo python -m pip install --upgrade pip
    python -m pip install --user docker-compose
  )
end