require 'spec_helper'

## Packages

describe package('ansible') do
  # Package ansible should be installed.
  it { should be_installed }
end
