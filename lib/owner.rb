class Owner
  # code goes here
  
  attr_reader :owner, :species
  
  @@all = []
  
  def initialize(name)
    @owner = name
    @species = "human"
    @@all << self
  end
  
  def name
    @owner
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def self.all
    @@all
  end
  
end