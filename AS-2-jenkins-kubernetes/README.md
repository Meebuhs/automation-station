## Jenkins Kubernetes example

This repository demonstrates the creation of a multi-node Kubernetes cluster using Vagrant and Ansible onto which Jenkins is deployed.

### Getting Started

The Kubernetes cluster can be deployed by running `vagrant up` in the root of this project. The master can be accessed via `vagrant ssh master` while the nodes can be accessed with `vagrant ssh node-N` where `N` is the node number (Note here the number of nodes is determined by the value of `NODES` in the Vagrantfile)

Once running, the jenkins dashboard will be accessible at `http://192.168.50.11:32000`.

### Resources

https://kubernetes.io/blog/2019/03/15/kubernetes-setup-using-ansible-and-vagrant/ - Altered to reduce duplication in ansible playbooks, use file module instead of directly using mkdir and chown commands and use Ubuntu 20.04

https://devopscube.com/setup-jenkins-on-kubernetes-cluster/ - Adapted to be provisioned by Ansible after the master and all nodes are running and connected

### Potential improvements

There must surely be a way to run the playbooks in order and apply them to the appropriate vms, perhaps using roles? Currently each vm is provisioned in order which results in the common tasks being run separately for each vm. This might honestly be fine but it smells a little to me. (This is sitting better with me now that the jenkins deployment occurs **after** the master and all nodes have been provisioned.)

The current jenkins deployment uses a local persistent volume attached to the worker `node-1`. This is fine for sample purposes and data will survive pod deletion however if that node goes down the data goes with it. For a production environment this would best be replaced with higher availability storage.

There is some final manual setup required for the jenkins deployment, namely retrieving the default admin password, installing plugins and creating an admin account. I'm not yet sure if this process could also be automated, or if it should.