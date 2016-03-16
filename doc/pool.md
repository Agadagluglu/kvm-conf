## Install libvirt

### Installing dependecies and adding user to libvirt group

```shell
sudo apt-get install qemu-kvm libvirt-bin
sudo adduser $USER libvirtd
sudo apt-get install virtinst
```

### Preparing a ressource pool. This pool will be used to create virtual disks for VMs.
This is how the syntax looks like :

```shell
pool-define-as <pool-name> dir - - - - <directory-name>
```

Exemple :

```shell
virsh pool-define-as disks dir - - - - /srv/virtualmachines/disks
```

Important : Do NOT Use an existing dir ! It will be created later.

### Check pool has been (really) allocated

```shell
virsh pool-list --all
```

Important : the pool is still NOT created

Should return that :

```shell
# virsh pool-list --all
Name                 State      Autostart 
-----------------------------------------
default              active     yes       
disks                inactive   no      
```

### Build the pool

This command will actuallu create the pool.

```shell
# virsh pool-build disks
Pool disks built
```
### Start the pool

```shell
# virsh pool-start disks
Pool disks started

// (Optional) Auto start the pool on bootup
# virsh pool-autostart disks
Pool disks marked as autostarted
```
### Get pool info

```shell
virsh pool-info disks
```
