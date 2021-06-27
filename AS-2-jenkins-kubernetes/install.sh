# Update packages
sudo apt-get update

# Install virtualbox and ansible
sudo apt install ansible virtualbox virtualbox-ext-pack

# Install vagrant via official repo such that it will receive upgrades
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install vagrant