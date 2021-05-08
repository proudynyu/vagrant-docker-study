
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 1024
    vb.cpus = 1
  end

  config.vm.
  synced_folder "./configs", "/configs"
  config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.define "docker" do |docker|
    docker.vm.network "public_network", ip: "192.168.0.80"
    docker.vm.network "forwarded_port", guest: 8000, host: 8000
    docker.vm.provider "virtualbox" do |vb|
      vb.name = "docker"
    end

    docker.vm.provision "shell", path: "./configs/scripts/docker_install.sh"
    docker.vm.provision "shell", 
      inline: "docker run -d -p 8000:8000 -v \"/configs/src:/var/www\" -w \"/var/www\" node npm start"
  end
end
