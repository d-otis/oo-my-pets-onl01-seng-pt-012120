require "pry"

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
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end
  
  def buy_cat(cat)
    Cat.new(cat, self)
  end
  
  def buy_dog(dog)
    Dog.new(dog, self)
  end
  
  def walk_dogs
    Dog.all.each {|dog| dog.mood = "happy" if dog.owner == self}
  end
  
  def feed_cats
    Cat.all.each {|cat| cat.mood = "happy" if cat.owner == self}
  end
  
  def sell_pets
    Cat.all.each do |kitty|
      if kitty.owner == self
        kitty.owner = nil
        kitty.mood = "nervous"
      end
    end
    Dog.all.each do |dog|
      if dog.owner == self
        dog.owner = nil
        dog.mood = "nervous"
      end
    end
  end
  
  def list_pets
    
  end
  
end