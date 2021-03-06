## Clean up.
echo "Start clean up"

# Remove unnecessary dependencies.
echo "Removing unnecessary dependencies"
apt-get -y remove linux-headers-$(uname -r) build-essential
apt-get -y autoremove
apt-get -y clean

# Removing leftover leases and persistent rules.
echo "cleaning up dhcp leases"
rm /var/lib/dhcp/*

# Make sure Udev doesn't block our network.
echo "cleaning up udev rules"
rm -rf /etc/udev/rules.d/70-persistent-net.rules
mkdir /etc/udev/rules.d/70-persistent-net.rules
rm -rf /dev/.udev/
rm /lib/udev/rules.d/75-persistent-net-generator.rules

# Add 2 sec delay to interface up to make the dhclient happy.
echo "Adding a 2 sec delay to the interface up"
echo "pre-up sleep 2" >> /etc/network/interfaces
