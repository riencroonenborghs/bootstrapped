require 'test_helper'

class BootstrappedTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, Bootstrapped
  end
end
