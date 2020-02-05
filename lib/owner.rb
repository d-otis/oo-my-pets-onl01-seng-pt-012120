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
  
  def say_species
    "I am a #{species}."
  end
  
end