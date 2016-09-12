require './review.rb'
require './restaurant.rb'

class Customer
  attr_accessor :reviews

  @@all = []

  def self.all
    @@all
  end

  def self.find_by_name(customer_name)
    #returns duplicates/other customers with name
    all.select {|customer| customer.name == customer_name}
  end

  def initialize
    @@all << self
    @reviews = []
  end

  def add_review(content, restaurant)
    Review.new(content, restaurant, self)
    restaurant.customers << self 
  end



end

# customer = customer.add_review('it was good', Restaurant.new)
# a new review tied ot the restaurant
# and tied to the customer
