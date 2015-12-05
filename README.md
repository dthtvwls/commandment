# Commandment

Finally a shell runner that does the right thing!

- returns true on success
- raises SystemCallError with Errno set and a message
- no icky extraneous output
- connects stdout to stdout and stderr to stderr
- bonus: turns stderr red

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

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/commandment.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
