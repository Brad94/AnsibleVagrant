sudo apt-get -y update

sudo apt-get install -y software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get -y update
sudo apt-get install -y ansible

cd /etc/ansible/

cat <<EOT >> hosts
[hosts]
192.168.1.108
EOT

ssh-keygen -t rsa << EOF



EOF
ssh-agent bash
ssh-add ~/.ssh/id_rsa
ssh-copy-id vagrant@192.168.1.108 << EOF
vagrant
EOF

ansible all -i hosts -u vagrant -m setup