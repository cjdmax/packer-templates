## Install Virtualbox Guest Additions.

## Check for vbox version.
if test -f .vbox_version ; then

  # install virtualbox guest additions.
  echo "Installing virtualbox:"
  cat .vbox_version
  mount -o loop VBoxGuestAdditions.iso /media/cdrom
  sh /media/cdrom/VBoxLinuxAdditions.run
  umount /media/cdrom

  # FIX for issue 3341
  # https://github.com/mitchellh/vagrant/issues/3341
  VBOX_VERSION=`cat .vbox_version`
  if [ $VBOX_VERSION = '4.3.10' ]; then
    ln -s /opt/VBoxGuestAdditions-4.3.10/lib/VBoxGuestAdditions /usr/lib/VBoxGuestAdditions
  fi

fi
