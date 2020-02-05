class Owner
  # code goes here
  
  attr_reader :owner
  
  def initialize(name)
    @owner = name
  end
  
  def name
    @owner
  end
  
end