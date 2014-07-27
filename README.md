SpecServ
========

Serve HTML test results from any directory to a web browser via HTTP.

Currently uses RSpec, but aims to become platform-agnostic.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'specserv'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install specserv

## Usage

cd into any directory and run ```specserv```
visit http://localhost:port/[spec_file_name_without_extension]

## Contributing

1. Fork it ( https://github.com/andybrice/specserv/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request