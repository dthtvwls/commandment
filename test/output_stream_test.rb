require 'test_helper'

class OutputStreamTest < Minitest::Test
  def test_that_stdout_is_connected
    $stdout = StringIO.new
    cmd("echo hello", output: true)
    assert $stdout.string.include?("hello")
  end

  def test_that_stderr_is_connected_and_red
    $stderr = StringIO.new
    cmd("echo hello 1>&2", output: true)
    assert $stderr.string.include?("\e[31mhello")
  end
end
