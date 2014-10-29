require 'spec_helper'

## Package

describe package('build-essential') do
  # Package should NOT be installed.
  it { should_not be_installed }
end

## Files and directories

describe command('ls /var/lib/dhcp/*') do
  # There should NOT be any DHCP leases left.
  it { should return_stderr 'ls: cannot access /var/lib/dhcp/*: No such file or directory' }
end

describe command('ls /var/cache/apt/archives/*.deb') do
  # Apt cache should be empty.
  it { should return_stderr 'ls: cannot access /var/cache/apt/archives/*.deb: No such file or directory' }
end

describe file('/etc/udev/rules.d/70-persistent-net.rules') do
  # There should not be any udev net rules.
  it { should_not be_file }
end

describe file('/lib/udev/rules.d/75-persistent-net-generator.rules') do
  # There should not be a rule_generator rules.
    it { should_not be_file }
end

describe file('/dev/.udev/') do
  # There should not be any device rules.
  it { should_not be_directory }
end
