class Example
  # these methods will return expected or unexpected results as an example
  
  def lorem
    %w(ipsum dolor sit).sample
  end
  
  def foo
    %w(bar baz ack).sample
  end
  
  def life
    (41..43).to_a.sample
  end
end