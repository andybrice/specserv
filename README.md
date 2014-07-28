SpecServ
========

Serves dynamically updated RSpec results from any directory as HTML

## Installation ##

Just run:

    $ gem install specserv

## Usage ##

`cd` into your spec directory, run `specserv` and make a note of the port.

Then visit http://localhost:port/relative/path/to/spec_file (without the .rb extension).

## Dependencies ##

Requires RSpec and Sinatra

## Roadmap ##

- Become platform-agnostic, not RSpec specific.
- Overhaul aesthetics
- Navigable test-case index pages
- Support for custom formatters
- Authentication for sensitive results
- Make Rack compatible for use with any webserver

## Contributing ##

1. Fork it ( https://github.com/andybrice/specserv/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request