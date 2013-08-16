# Install Ruby from packages
echo "Install ruby"
apt-get -y install ruby ruby-dev libopenssl-ruby rubygems

#Putting gems in $PATH
echo 'PATH=$PATH:/var/lib/gems/1.8/bin' >> /etc/profile.d/rubygems.sh
echo 'export PATH' >> /etc/profile.d/rubygems.sh
