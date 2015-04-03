## Base configuration of image.
echo "Setting up the basics"

# Set install date.
echo "Set install date"
date > /etc/vagrant_box_build_time

# Execute apt-get update.
echo "Executing apt-get update"
apt-get -yq update

# Execute apt-get upgrade.
echo "Executing apt-get upgrade"
apt-get -yq upgrade

# Install dependencies for later scripts.
echo "Installing dependencies"
apt-get -y install linux-headers-$(uname -r) build-essential
apt-get -y install zlib1g-dev libssl-dev libreadline-gplv2-dev

# Base packages that should be installed.
echo "Installing base packages"
apt-get -y install sysstat curl unzip vim multitail htop atop ngrep tcpdump git 

# Tweak sshd to prevent DNS resolution (speed up logins).
echo "Disabling DNS resolution"
echo 'UseDNS no' >> /etc/ssh/sshd_config

# Remove 5s grub timeout to speed up booting.
echo "Removing grub timeout"
sed -i 's/GRUB_TIMEOUT=5/GRUB_TIMEOUT=0/g' /etc/default/grub
update-grub
