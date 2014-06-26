Vagrant & Ansible
============

Just an exercise for myself to run and provision environment with Vagrant and Ansible:
* _Vagrant_ - VMs environment managing
* _Ansible_ - provisioning and configuration management

Read more about these tools here: http://virtser.net/2014/06/26/vagrant-and-ansible/


# What is inside

Imagine that your environment is build of front, back and database machines. Front and back are running web server. Front is a client application. Back is server application written in Python. On database machine we are using CouchDB.

Now we need to create the three machines, put them under the same private network and provision them with Apache, Python and CouchDB.

That's exactly what this example do. Please review the code, its very simple.

# Usage
* Install Vagrant:
https://docs.vagrantup.com/v2/installation/

* Install Ansible:
http://docs.ansible.com/intro_installation.html

* Clone this repo:
``` 
git clone https://github.com/virtser/vagrantansible.git
```
* Create and provision environment:
``` 
vagrant up
```
