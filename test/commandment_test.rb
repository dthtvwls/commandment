require 'test_helper'

class CommandmentTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Commandment::VERSION
  end

  def test_it_returns_true_on_zero
    assert cmd("true")
  end

  def test_it_raises_on_nonzero
    assert_raises(SystemCallError) { cmd("false") }
  end
end
