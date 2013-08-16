PUPPET_VERSION='2.7.22'
GEM_OPTIONS='--no-ri --no-rdoc'

# Add puppet user and group
echo "Adding puppet user and group"
adduser --system --group --home /var/lib/puppet puppet

# Installing Puppet
echo "Installing puppet version: $PUPPET_VERSION"
gem install puppet -v $PUPPET_VERSION $GEM_OPTIONS
