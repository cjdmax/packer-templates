require 'spec_helper'

## Packages

describe package('lxc-docker') do
  # Package lxc-docker should be installed.
  it { should be_installed }
end

## Commands

describe command("docker --version") do
  # Check if VBoxControl can be executed
  it { should_not return_stderr /command not found/ }
end
