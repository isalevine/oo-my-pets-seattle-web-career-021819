class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end


  def say_species
    "I am a #{self.species}."
  end



  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end


  def walk_dogs
    self.pets[:dogs].each do |dog_instance|
      dog_instance.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat_instance|
      cat_instance.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish_instance|
      fish_instance.mood = "happy"
    end
  end


  def sell_pets
    self.pets.each_value do |pet_array|
      pet_array.each do |pet_instance|
        pet_instance.mood = "nervous"
      end
      pet_array.clear
    end
  end


  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end



  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

end
