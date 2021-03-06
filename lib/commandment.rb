require "commandment/version"

module Commandment
  def cmd command, opts = {}
    default_opts = { output: false, err_hl: true }
    opts = default_opts.merge opts

    Open3.popen3(command) do |stdin, stdout, stderr, thread|
      if opts[:output]
        $stdout.print stdout.read
        $stderr.print opts[:err_hl] ? "\e[31m#{stderr.read}\e[0m" : stderr.read
      end

      raise SystemCallError.new(thread.value.to_s, thread.value.to_i) unless thread.value.success?
    end

    true
  end
end
