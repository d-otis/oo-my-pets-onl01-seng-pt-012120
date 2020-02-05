class Owner
  # code goes here
  
  attr_reader :owner, :species
  
  def initialize(name)
    @owner = name
    @species = "human"
  end
  
  def name
    @owner
  end
  
end