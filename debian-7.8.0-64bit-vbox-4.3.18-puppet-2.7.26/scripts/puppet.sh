## Install puppet.

# Download and install "release” package.
puppet_release="puppetlabs-release-wheezy.deb"
wget -q http://apt.puppetlabs.com/${puppet_release}
dpkg -i $puppet_release
rm $puppet_release

# Update apt.
apt-get update

# Install ruby and rubygems.
apt-get install -y ruby rubygems

# Install Puppet.
apt-get install -y facter=1.7.6-1puppetlabs1 puppet-common=2.7.26-1puppetlabs1 puppet=2.7.26-1puppetlabs1
