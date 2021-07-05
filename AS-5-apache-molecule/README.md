## Apache Molecule example

This repo provides an example of using Vagrant to provision a VM, via Ansible, for the purpose of running an Apache web server. Moleculehas also been used to allow testing and linting of the playbook. 

### Getting started

Create and provision the VM by running `vagrant up`. This will automatically start the VM as well as prepare the machine to serve an example NodeJS app.

Once Vagrant is finished, the app will be accessible at `192.168.50.10:3000` and the VM can be accessed by running `vagrant ssh`.

### Testing

Testing can be performed using Molecule by running `molecule test`. The playbook can also be tested on other distributions by passing the desired OS like so `MOLECULE_DISTRO=debian10 molecule test`.

Molecule can also lint this playbook by running `molecule lint` which will run `yamllint` with the rules specified in `.yamllint` as well as `ansible-lint`.

### Resources

Episode 8 of Jeff Geerling's Ansible 101 - https://www.youtube.com/watch?v=CYghlf-6Opc - Added configuration for molecule-vagrant driver.