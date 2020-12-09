require 'pry'
class Owner
  attr_accessor :cat
  attr_reader :name, :species

  @@all = []

  @@pets = []
  
  def initialize (name = 0)
    @name = name 
    species
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def species
    @species = "human"
  end

  def say_species
    return "I am a #{@species}."
  end

  def self.count
  total_owners = @@all.count
  total_owners
  end
  def self.reset_all
    @@all.clear
    @@all
  end

  def cats
    Cat.all.select {|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def buy_cat(name)
    Cat.new(name, self)
    self.cats.count
    # binding.pry
  end

  def buy_dog(name)
    Dog.new(name, self)
    self.cats.count
  end

  def walk_dogs
    # binding.pry
    Dog.all.each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    Cat.all.each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    Cat.all.each do |cat|
      cat.mood = "nervous"
    end
    Cat.all.each do |owner| 
      owner.owner = nil
    end
    Dog.all.each do |dog|
      dog.mood = "nervous"
    end
    Dog.all.each do |owner| 
      owner.owner = nil
    end
  end

  def list_pets
    return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end








end