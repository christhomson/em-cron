# EM::Cron

Simple [Eventmachine](https://github.com/eventmachine/eventmachine) library for running code on a schedule using the crontab syntax.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'em-cron'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install em-cron

## Usage
```ruby
require 'em/cron'
EM.run do
  EM::Cron.schedule("* * * * *") do |time|
    puts "hello world at time: #{time}"
  end
end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/em-cron/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
