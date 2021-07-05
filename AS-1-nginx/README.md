## NGINX example

This repo provides a simple example of using Vagrant to provision a VM, via a shell script, for the purpose of serving a simple static website with NGINX.

### Getting started

Create and provision the VM by running `vagrant up`. This will automatically start the VM as well as install and configure NGINX to serve the site you place within `./src`.

Once Vagrant is finished, the site will be accessible at `192.168.50.10` and the VM can be accessed by running `vagrant ssh`.
