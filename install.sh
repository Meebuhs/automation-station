# Update packages
sudo apt-get update

# Install virtualbox
sudo apt install virtualbox virtualbox-ext-pack

# Install vagrant via official repo such that it will receive upgrades
# see https://www.vagrantup.com/downloads
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install vagrant

# Install docker engine via official repo such that it will receive updates
# see https://docs.docker.com/engine/install/ubuntu/
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update && sudo apt-get install docker-ce docker-ce-cli containerd.io

# Perform docker postinstall steps to ensure docker is useable without root privileges
# see https://docs.docker.com/engine/install/linux-postinstall/
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

# This assumes python3 is already available on your machine and if you're running Ubuntu 20.04, it is by default.
# You may however want to check which version you have installed

# Install Ansible and Molecule
# see https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-and-upgrading-ansible-with-pip
sudo apt install python3-pip
pip3 install ansible molecule jinja2