## Solr example

This repo provides a simple example of using Vagrant to provision a VM, via Ansible, for the purpose of running Solr.

### Getting started

First install the required VirtualBox and Vagrant. You can either do this manually for your OS or if using Ubuntu you can run install.sh `sudo sh install.sh` and follow the prompts.

Next provision the VM by running `vagrant up`. This will automatically start the VM as well as download, install and start Solr.

Once Vagrant is finished, solr will be accessible at `192.168.50.10:8983` and the VM can be accessed by running `vagrant ssh`.

### Resources

Jeff Geerling's Ansible for DevOps https://www.ansiblefordevops.com/ - Chapter 4