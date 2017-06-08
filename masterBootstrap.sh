#!/bin/bash
sudo apt-get -y update

sudo apt-get install -y software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get -y update
sudo apt-get install -y ansible
apt-get -y install python-pip
pip install 'docker-py>=1.7.0'
pip install 'docker-compose>=1.7.0'

sudo cp /opt/vagrant_data/java.tar.gz /etc/ansible/
sudo cp /opt/vagrant_data/maven.tar.gz /etc/ansible/
sudo cp /opt/vagrant_data/jenkins_2.1_all.deb /opt
sudo cp /opt/vagrant_data/jira.bin /opt/
cd /etc/ansible/

cat <<EOT >> hosts
[hosts]
192.168.1.108
EOT

# ssh-keygen -t rsa << EOF



# EOF
# # ssh-agent bash
# eval `ssh-agent`
# # bash -i
# ssh-add ~/.ssh/id_rsa
# ssh-copy-id vagrant@192.168.1.108 << EOF
# vagrant
# EOF

# ansible all -i hosts -u vagrant -m setup