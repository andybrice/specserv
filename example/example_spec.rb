require_relative 'example'

describe Example do
  let(:example) { Example.new }
  
  # these tests will pass or fail at random as an example
  
  it 'should return ipsum when lorem is called' do
    expect( example.lorem ).to eq 'ipsum'
  end

  it 'should return bar when foo is called' do
    expect( example.foo ).to eq 'bar'
  end

  it 'should know the meaning of life, the universe and everything' do
    expect( example.life ).to eq 42
  end

  # an example of a pending test

  it "should do something really complicated"
end