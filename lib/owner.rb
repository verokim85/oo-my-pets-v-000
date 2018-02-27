class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []


  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {fishes: [], dogs: [], cats: []}
  end

  def self.all
    @@all
  end

  def say_species
    "I am a human."
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
    pets[:fishes].count
  end



end
