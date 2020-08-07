require 'pry'
class Owner

attr_accessor :feed, :walk
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
    #binding.pry 
    #self.find(name) ? self.find(name) : self.new(name
    dog.walk? @mood = "happy" : @mood = "nervous"
  
  end
end