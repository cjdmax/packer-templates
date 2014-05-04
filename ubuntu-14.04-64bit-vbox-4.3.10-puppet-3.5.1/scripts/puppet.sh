# install puppet
puppet_release="puppetlabs-release-trusty.deb"
wget -q http://apt.puppetlabs.com/${puppet_release}
dpkg -i $puppet_release
rm $puppet_release

apt-get update
apt-get install -y puppet
