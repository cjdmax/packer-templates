require 'spec_helper'

## Packages

%w(sysstat curl unzip vim multitail htop atop ngrep tcpdump swaks git).each do |package|
  describe package(package) do
    # Check if all packages are installed.
    it { should be_installed }
  end
end

## Files and directories

describe file('/etc/vagrant_box_build_time') do
  # file containing build time should be created
  it { should be_file }
end

describe file('/etc/default/grub') do
    # Grub timeout should be 0.
    its(:content) { should match /GRUB_TIMEOUT=0/ }
end

describe file('/etc/network/interfaces') do
    # Verify 2 sec delay to the interface up.
    its(:content) { should match /pre-up sleep 2/ }
end
