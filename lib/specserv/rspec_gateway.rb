module Specserv
  class RSpecGateway
    def run( source_path )
      `rspec --format html #{source_path}` # TODO run RSpec through RSpec::Core::Runner rather than through executable
    end
  end
end