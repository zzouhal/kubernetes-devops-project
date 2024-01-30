#!/bin/bash
# defined as a cronjob
mkdir /home/ubuntu/backups
sudo k3s etcd-snapshot save --etcd-snapshot-dir=/home/ubuntu/backups
sudo k3s etcd-snapshot ls --etcd-snapshot-dir=/home/ubuntu/backups
sudo rsync -a /home/ubuntu/backups vagrant@192.168.10.10:/home/vagrant/backups #move to backup server
