sudo systemctl stop k3s # Nous arretons le service k3s
rsync -a vagrant@192.168.10.10:/home/vagrant/backups/backups /home/ubuntu/ # Nous copions le repertoire de backup sur le répertoire distant pour le remettre à son emplacement initial sur la machine ou nous avons notre cluster
ls home/ubuntu/backups

sudo k3s server --cluster-reset --cluster-reset-restore-path=/home/ubuntu/backups/on-demand-ip-172-31-22-118-1675233938

sudo systemctl start k3s
sudo chmod 644 /etc/rancher/k3s/k3s.yaml
kubectl get all