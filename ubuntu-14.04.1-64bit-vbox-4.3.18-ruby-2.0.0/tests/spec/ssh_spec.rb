require 'spec_helper'

## Packages

describe package 'openssh-client' do
  # Package openssh-client should be installed.
  it { should be_installed }
end

describe package 'openssh-server' do
  # Package openssh-server should be installed.
  it { should be_installed }
end

## Services

describe service 'ssh' do
  # Service ssh should be running.
  it { should be_enabled }
end

describe process 'sshd' do
  # Process sshd should be running.
  it { should be_running }
end

describe port(22) do

  # Service should be listing on port 22 (tcp and tcp6)
  it { should be_listening.with 'tcp' }
  it { should be_listening.with 'tcp6' }
end

## Files and directories

describe file '/etc/ssh/sshd_config' do

  # File should be owned by user and group root with mode 644
  it { should be_mode 644 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  its(:content) {

    # DNS should be disabled in SSH config
    should match /UseDNS no/

    # Do not allow empty passwords
    should match /^PermitEmptyPasswords\W+no$/
    should_not match /^PermitEmptyPasswords\W+yes$/
  }
end
