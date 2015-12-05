# Commandment

> Commandment, _noun_.
>
> 1. A command or edict
>
> 2. The act of commanding

Finally, a ruby shell command runner that just does the right thing!

- Returns true on success (status code 0)
- When non-zero, raises SystemCallError with Errno set and a message
- Connects stdout to stdout and stderr to stderr
- Bonus: turns stderr red

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'commandment'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install commandment

## Usage

Include (or extend) Commandment in the scope where you wish to use it, and use `cmd` to run shell commands.

    include Commandment

    cmd("echo Hello World!")

`cmd` accepts some options:

- `output` passes stdout and stderr forward to ruby (defaults to false -- no output)
- `err_hl` adds terminal codes to turn stderr red (defaults to true)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dthtvwls/commandment.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
