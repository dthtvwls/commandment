require "commandment/version"

module Commandment
  def cmd command, opts = {}
    default_opts = { output: false }
    opts = default_opts.merge opts

    Open3.popen3(command) do |stdin, stdout, stderr, thread|
      if opts[:output]
        $stdout.print stdout.read
        $stderr.print "\e[31m#{stderr.read}\e[0m"
      end

      raise SystemCallError.new(thread.value.to_s, thread.value.to_i) unless thread.value.success?
    end

    true
  end
end
