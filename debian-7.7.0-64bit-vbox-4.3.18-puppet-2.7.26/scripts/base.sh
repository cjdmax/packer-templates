## Base configuration of image.
echo "Setting up the basics"

# Set install date.
echo "Set install date"
date > /etc/vagrant_box_build_time

# Execute apt-get update.
echo "Executing apt-get update"
apt-get -y update

# Execute apt-get upgrade.
echo "Executing apt-get upgrade"
apt-get -y upgrade

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
cat <<EOF > /etc/default/grub
# If you change this file, run 'update-grub' afterwards to update
# /boot/grub/grub.cfg.

GRUB_DEFAULT=0
GRUB_TIMEOUT=0
GRUB_DISTRIBUTOR=`lsb_release -i -s 2> /dev/null || echo Debian`
GRUB_CMDLINE_LINUX_DEFAULT="quiet"
GRUB_CMDLINE_LINUX="debian-installer=en_US"
EOF

update-grub
