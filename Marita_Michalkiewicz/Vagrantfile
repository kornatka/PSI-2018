
$script = <<-SCRIPT
sudo apt-get update
sudo apt-get upgrade -y
sudo curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo mkdir /Marita
sudo chmod 777 /Marita
SCRIPT

$script2 = <<-SCRIPT
cd /Marita
sudo docker-compose up -d
SCRIPT

Vagrant.configure("2") do |config|
  
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision "shell", inline: $script
  config.vm.provision "file", source: "./Docker-compose.yml", destination: "/Marita/docker-compose.yml"
  config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.vm.provision "shell", inline: $script2

  
end
