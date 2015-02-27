## Install Lita

# Install ruby 2.0
apt-get install -y ruby2.0 ruby2.0-dev 

# Fix bug that makes ruby binary point 1.9.1 version instead 2.0.x 
rm /usr/bin/ruby /usr/bin/gem /usr/bin/irb /usr/bin/rdoc /usr/bin/erb
ln -s /usr/bin/ruby2.0 /usr/bin/ruby
ln -s /usr/bin/gem2.0 /usr/bin/gem
ln -s /usr/bin/irb2.0 /usr/bin/irb
ln -s /usr/bin/rdoc2.0 /usr/bin/rdoc
ln -s /usr/bin/erb2.0 /usr/bin/erb
gem update --system
gem pristine --all

# Install Lita
gem install lita
