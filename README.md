# Playfair

[![Build Status](https://travis-ci.org/trobrock/playfair_gem.png?branch=master)](https://travis-ci.org/trobrock/playfair_gem)
[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/trobrock/playfair_gem/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

The official playfair api gem.

## Installation

Add this line to your application's Gemfile:

    gem 'playfair'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install playfair

## Usage

Create a new Statsd/Graphite instance

```ruby
Playfair.client.configure do |c|
  c.email = "bob@example.com"
  c.password = "supersecret"
end

u = Playfair::User.me
u.instances.create
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
