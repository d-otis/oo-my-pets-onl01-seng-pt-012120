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
  
  def self.count
    self.all.count
  end
  
  def self.reset_all
    self.all.clear
  end
  
  def cats
    binding.pry
  end
  
end