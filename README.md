SpecServ
========

Serves dynamically updated RSpec results from any directory as HTML

## Installation ##

Just run:

    $ gem install specserv

## Usage ##

cd into your spec directory and run `specserv`
visit http://localhost:port/relative/path/to/spec_file (leave off the .rb extension)

## Dependencies ##

Requires RSpec and Sinatra

## Roadmap ##

SpecServ currently uses RSpec, but aims to become platform-agnostic.

## Contributing ##

1. Fork it ( https://github.com/andybrice/specserv/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request