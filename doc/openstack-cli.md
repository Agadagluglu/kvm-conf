## Install OpenStack CLI

### virtualenv

Install "virtualenv" package with your favorite package manager.

Create a new virtualenv :

```shell
virtualenv /path/to/venv
# exemple
mkdir /my-venvs
virtualenv ~/my-venvs/venv-openstack
```

source the VM :

```shell
source ~/my-venvs/venv-openstack/bin/activate
```

### pip - install the cli packages

```shell
for i in openstack, heat, neutron, swift
do
pip install python-"$i"client
done
```

### openstack-cli

### Notes

For fedora, intall the packages "redhat-rpm-config" if pip install python-openstackclient fails.
