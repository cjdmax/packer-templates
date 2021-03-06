## Set up Vagrant related items.

# Create the user vagrant with password vagrant.
echo "Creating user: vagrant"
useradd -G sudo -p $(perl -e'print crypt("vagrant", "vagrant")') -m -s /bin/bash -N vagrant

# Install vagrant keys.
echo "Adding public ssh key for user vragant"
mkdir -pm 700 /home/vagrant/.ssh
curl -Lo /home/vagrant/.ssh/authorized_keys 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub'
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh

# Configure sudo.
echo "Configure sudo" 
echo 'vagrant ALL=NOPASSWD:ALL' > /etc/sudoers.d/vagrant 
chmod 0440 /etc/sudoers.d/vagrant 
