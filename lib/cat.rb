require 'pry'
class Cat

  attr_accessor :owner 
  attr_reader :name, :mood 

  @@all = []

  def initialize (name, owner)
    @name = name 
    @owner = owner
    @mood = "nervous"
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def mood=(mood)
    @mood = mood
  end

end