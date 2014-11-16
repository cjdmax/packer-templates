# Install puppet

# Download and install "release” package.
echo "Adding puppet repository"
puppet_release="puppetlabs-release-trusty.deb"
wget -q http://apt.puppetlabs.com/${puppet_release}
dpkg -i $puppet_release
rm $puppet_release
apt-get update

# Install ruby and rubygems.
echo "Installing ruby"
apt-get install -y ruby rubygems

# Install Puppet.
echo "Installing puppet"
apt-get install -y puppet
