require 'rspec'
require 'rspec/core/formatters/html_formatter'

module Specserv
  class RSpecGateway
#    def initialize
#    end
    
    def run( source_path )
      rconfig = RSpec.configuration
      
      # create a StringIO to capture output
      capture = StringIO.new
      
      # create an html formatter which outputs to the StringIO
      html_formatter = RSpec::Core::Formatters::HtmlFormatter.new(capture)
      
      # create and set up a reporter which uses the html formatter
      reporter = RSpec::Core::Reporter.new( rconfig )
      reporter.register_listener( html_formatter )
      rconfig.instance_variable_set(:@reporter, reporter)
      
      # run the source file with the rspec runner
      RSpec::Core::Runner.run([source_path])
      
      # return the captured output
      capture.string
    end
  end
end