packer-templates
================

# Description
These are my personal Packer templates.

This directory name contains the relevant information:

    <distro>-<distro version>-<arch>-vbox-<guest version>

For example:

    ubuntu-12.04.2-64bit-vbox-4.2.16

Will breakdown into the following information:

    Distribution name   : Ubuntu
    Release             : 12.04.2
    Arch                : 64bit (x86_64)
    Guest Edition       : 4.2.16

I build all my baseboxes with the following Packer version:

    packer 0.2.3

I have tested my basesboxes with Vagrant version:

    vagrant 1.2.2

All boxes contain the following software/version:

    puppet 2.7.22
    ruby 1.8.7
    rubygems 1.8.7
