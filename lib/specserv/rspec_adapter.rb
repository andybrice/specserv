require 'rspec'
require 'rspec/core/formatters/html_formatter'

module Specserv
  class RSpecAdapter
    def run( source_path )
      RSpec.reset
      
      # create a StringIO to capture output
      errors = StringIO.new
      output = StringIO.new
      
      # run rspec
      RSpec::Core::Runner.run([source_path, '--format', 'html'], errors, output)
      
      # return the captured output
      output.string
    end
  end
end