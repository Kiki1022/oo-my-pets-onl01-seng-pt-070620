require 'pry'
class Owner


attr_reader  :name, :species
@@all = []


  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
   
  def say_species
  "I am a human."
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
    Cat.all.select {|c| c.owner ==self}
  end

  def dogs 
    Dog.all.select {|d| d.owner == self}
  end
  
  def buy_cat(cat)
    Cat.new(cat,self) 
  end
  
  def buy_dog(dog)
    Dog.new(dog,self)
  end

  def walk_dogs
    dogs.each {|m| m.mood = "happy"}
  end
  
  def feed_cats
    cats.each {|m| m.mood = "happy"}
  end
  
  def sell_pets
   Dog.all.each {|m,o| m.mood = "nervous", o.owner = nil}
   Cat.all.each {|m,o| m.mood = "nervous", o.owner = nil}
   #binding.pry
  end
 
end
  