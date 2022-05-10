IMAGE_NAME = "bento/ubuntu-20.04"

Vagrant.configure("2") do |config|
  config.ssh.insert_key = false
  config.vm.box = IMAGE_NAME
  config.vm.synced_folder "scripts/", "/home/vagrant/scripts"

  config.vm.define "kafka" do |kafka|
    kafka.vm.hostname = "kafka-master"
    kafka.vm.network "private_network", ip: "192.168.50.200"
    kafka.vm.provider "virtualbox" do |vb|
      vb.memory = 8040
      vb.cpus = 4
    end
    kafka.vm.provision "shell", path: "scripts/docker.sh"
    kafka.vm.provision "shell", path: "scripts/create_topic.sh"
  end
end
