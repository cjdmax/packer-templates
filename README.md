packer-templates
================

# Description
These are my personal Packer templates.

This directory name contains the relevant information:

    <distro>-<distro version>-<arch>-vbox-<guest version>-puppet-<puppet version>

For example:

    ubuntu-12.04.4-64bit-vbox-4.3.10-puppet-2.7.25

Will breakdown into the following information:

    Distribution name   : Ubuntu
    Release             : 12.04.4
    Arch                : 64bit (x86_64)
    Guest Edition       : 4.3.10
    Puppet              : 2.7.25

I build all my baseboxes with the following Packer version:

    packer 0.5.2

I have tested my basesboxes with Vagrant version:

    vagrant 1.5.4

All builds are tested using serverspec.
