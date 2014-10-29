# Install Virtualbox Guest Additions

## Check for vbox version.
if test -f .vbox_version ; then

  # Install virtualbox guest additions.
  echo "Installing virtualbox:"
  cat .vbox_version
  mount -o loop VBoxGuestAdditions.iso /media/cdrom
  sh /media/cdrom/VBoxLinuxAdditions.run
  umount /media/cdrom

fi
