require 'spec_helper'

## Packages

describe package('puppetlabs-release') do
  # Package puppetlabs-release should be installed.
  it { should be_installed }
end

describe package('puppet') do
  # Package puppet should be installed.
  it { should be_installed }
end

describe package('facter') do
  # Package facter should be installed.
  it { should be_installed }
end
