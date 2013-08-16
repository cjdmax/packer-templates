RUBY_VERSION='1.8'

# Install Ruby from packages
echo "Install ruby version: $RUBY_VERSION"
apt-get -y install ruby$RUBY_VERSION ruby$RUBY_VERSION-dev libopenssl-ruby$RUBY_VERSION rubygems$RUBY_VERSION
