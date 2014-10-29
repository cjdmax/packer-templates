packer-templates
================

# Description
These are my personal Packer templates.

The template directory name contains the relevant information:

    <distro>-<distro version>-<arch>-vbox-<guest version>-puppet-<puppet version>

For example:

    ubuntu-12.04.5-64bit-vbox-4.3.18-puppet-2.7.26

Will breakdown into the following information:

    Distribution name   : Ubuntu
    Release             : 12.04.5
    Arch                : 64bit (x86_64)
    Guest Edition       : 4.3.18
    Puppet              : 2.7.26

I have build my baseboxes with Packer version:

    packer 0.6.1

I have tested my basesboxes with Vagrant version:

    vagrant 1.6.5

All builds are tested using serverspec.
