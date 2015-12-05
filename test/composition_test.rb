require 'test_helper'

class CompositionTest < Minitest::Test
  class Extender
    extend Commandment
  end

  class Includer
    include Commandment
  end

  def test_that_it_can_be_extended
    assert Extender.cmd("true")
  end

  def test_that_it_can_be_included
    assert Includer.new.cmd("true")
  end
end
