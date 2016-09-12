class Restaurant
  attr_accessor :customers, :reviews

  @@all = []

  def self.all
    @@all
  end

  def self.find_by_name(restaurant_name)
    #returns duplicates
    all.select {|restaurant| restaurant.name == restaurant_name}
  end

  def initialize(name)
    @@all << self
    @reviews = []
    @customers = []
  end



end
