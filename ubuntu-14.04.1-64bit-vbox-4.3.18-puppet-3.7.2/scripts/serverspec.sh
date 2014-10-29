## Install serverspec and execute tests.
echo "Installing serverspec and executing tests"

# Install serversec.
gem install bundler --no-ri --no-rdoc

# Execute tests.
cd /tmp/tests
bundle install --path=vendor
bundle exec rake spec
