# Install puppet

# Download and install "release” package.
puppet_release="puppetlabs-release-trusty.deb"
wget -q http://apt.puppetlabs.com/${puppet_release}
dpkg -i $puppet_release
rm $puppet_release

# Update apt.
apt-get update

# Install ruby and rubygems.
apt-get install -y ruby rubygems

# Install Puppet.
apt-get install -y puppet
