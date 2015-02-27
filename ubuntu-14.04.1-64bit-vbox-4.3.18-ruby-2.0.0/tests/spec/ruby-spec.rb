require 'spec_helper'

## Packages

describe package('ruby2.0') do
  # Package ruby2.0 should be installed.
  it { should be_installed }
end

describe package('ruby2.0-dev') do
  # Package ruby2.0-dev should be installed.
  it { should be_installed }
end

describe command("gem --version") do
  # Check if gem can be executed
  it { should_not return_stderr /command not found/ }
end
