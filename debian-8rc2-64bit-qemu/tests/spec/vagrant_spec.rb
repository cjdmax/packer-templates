require 'spec_helper'

## User

describe user('vagrant') do

  # User 'vagrant' should exist.
  it { should exist }

  # User should have uid 1000.
  it { should have_uid '1000' }

  # User home should be '/home/vagrant'
  it { should have_home_directory '/home/vagrant' }

  # User should have 'vagrant insecure public key'.
  it { should have_authorized_key 'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA6NF8iallvQVp22WDkTkyrtvp9eWW6A8YVr+kz4TjGYe7gHzIw+niNltGEFHzD8+v1I2YJ6oXevct1YeS0o9HZyN1Q9qgCgzUFtdOKLv6IedplqoPkcmF0aYet2PkEDo3MlTBckFXPITAMzF8dJSIFo9D8HfdOV0IAdx4O7PtixWKn5y2hMNG0zQPyUecp4pzC6kivAIhyfHilFR61RGL+GPXQ2MWZWFYbAGjyiYJnAmCP3NOTd0jMZEnDkbUvxhMmBYSdETk1rRgm+R4LOzFUGaHqHDLKLX+FIPKcF96hrucXzcWyLbIbEgE98OHlnVYCzRdK8jlqm8tehUc9c9WhQ== vagrant insecure public key' }
end

## Files and directories

describe file '/home/vagrant/.ssh/' do

  # Should be a directory with mode 700.
  it { should be_directory }
  it { should be_mode 700 }
end

describe file '/home/vagrant/.ssh/authorized_keys' do

  # Should be a file with mode 600 owned by vagrant.
  it { should be_file }
  it { should be_mode 600 }
  it { should be_owned_by 'vagrant' }
#  it { should be_grouped_into 'vagrant' }
end

describe file('/etc/sudoers.d/vagrant') do

  # File should contain NOPASSWD for user vagrant and habe mode 440.
  its(:content) { should match /vagrant ALL=NOPASSWD:ALL/ }
  it { should be_mode 440 }
end

