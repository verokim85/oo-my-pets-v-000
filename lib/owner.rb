class Owner
  attr_accessor :name, :pets, :mood
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

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
    pets[:cats].count
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
    pets[:dogs].count
  end

  def mood=mood
    @mood = mood
  end

  def walk_dogs
    pets[:dogs]mood = "happy"

  end



end
