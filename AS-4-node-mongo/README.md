## Node example

This repo provides an example of using Vagrant to provision a VM, via Ansible, for the purpose of hosting a NodeJS web server.

### Getting started

First install the required VirtualBox and Vagrant. You can either do this manually for your OS or if using Ubuntu you can run install.sh `sudo sh install.sh` and follow the prompts.

Next provision the VM by running `vagrant up`. This will automatically start the VM as well as prepare the machine to serve an example NodeJS app.

Once Vagrant is finished, the app will be accessible at `192.168.50.10:3000` and the VM can be accessed by running `vagrant ssh`.

### Resources

Jeff Geerling's Ansible for DevOps https://www.ansiblefordevops.com/ - Chapter 4 - Adapted to run on an Ubuntu box. Added MongoDB setup and cloning/serving of the below repository. 

Jeff Geerling's Ansible for DevOps https://www.ansiblefordevops.com/ - Chapter 6 - For converting the playbooks to use roles.

https://github.com/ijason/NodeJS-Sample-App - The sample app served by this project.

https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/ - Installation instructions for MongoDB.