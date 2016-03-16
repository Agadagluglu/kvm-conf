## Ansible playbooks

This is a work in progress.

This set of ansible playbooks is used to configure the ubuntu kvm hypervisors with ESXi VMs.
The roles common and kvm-setup will prepare the server.
Then, the role ESXi will deploy a qcow2 image containing the ESXi.
This image was built using another set of ansible playbooks and packer, a hashicorps product.

### Install ansible on ubuntu server

Use the following to install ansible on ubuntu
If you do not add the repositorym an old version of ansible will be installed.
the version being pre 2.0, a lot of features are not working/are depreciated.

```shell
$ sudo apt-get install software-properties-common
$ sudo apt-add-repository ppa:ansible/ansible
$ sudo apt-get update
$ sudo apt-get install ansible
```

An alternative is to install via pip

```shell
pip install ansible
```
