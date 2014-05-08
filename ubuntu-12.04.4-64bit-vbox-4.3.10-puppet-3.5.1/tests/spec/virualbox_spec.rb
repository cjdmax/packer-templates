require 'spec_helper'

## Commands

describe command("VBoxControl -v") do
  # Check if VBoxControl can be executed
  it { should_not return_stderr /command not found/ }
end
