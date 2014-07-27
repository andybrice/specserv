require 'sinatra'

class NoSpecFileError < StandardError; end

class MalformedResultsError < StandardError; end

class RSpecGateway
  def run( source_path )
    `rspec --format html #{source_path}`
  end
end

before do  
  @tester = RSpecGateway.new
  
  def set_spec_path (spec_path)
    @spec_path = "#{spec_path}.rb"
  end
  
  def spec_file_exists?
    File.exists?(@spec_path)
  end
  
  def run_tests
    @results = @tester.run @spec_path  
  end
  
  def malformed_results?
    @results.nil? || @results.strip == ""
  end
  
  def respond_with_results
    @results
  end
  
  def respond_with_404
    status 404
    "Could not find a spec file called #{@spec_path}!"
  end
  
  def respond_with_500
    status 500
    "There was an error generating results for #{@spec_path}!"
  end
end


## Index Page ##

get '/' do
  'SpecServ Test Result Server'
end


## Result Pages ##

get "/:spec_path" do
  
  set_spec_path( params[:spec_path] )
  
  begin
    raise NoSpecFileError unless spec_file_exists?
    run_tests
    raise MalformedResultsError if malformed_results?
    respond_with_results
    
  rescue NoSpecFileError  
    respond_with_404
    
  rescue MalformedResultsError
    respond_with_500
  end
end