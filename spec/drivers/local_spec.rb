# -*- encoding : utf-8 -*-
require 'drivers/spec_helper'

describe Vos::Drivers::Local do
  with_tmp_spec_dir

  before do
    @driver = Vos::Drivers::Local.new root: spec_dir
  end

  it_should_behave_like "vos driver"

  it_should_behave_like 'vfs driver basic'
  it_should_behave_like 'vfs driver attributes basic'
  it_should_behave_like 'vfs driver files'
  it_should_behave_like 'vfs driver full attributes for files'
  it_should_behave_like 'vfs driver dirs'
  it_should_behave_like 'vfs driver full attributes for dirs'
  it_should_behave_like 'vfs driver query'
  it_should_behave_like 'vfs driver tmp dir'
end
