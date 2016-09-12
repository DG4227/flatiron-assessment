require './restaurant.rb'

class Review
  attr_accessor :customer, :restaurant, :content

    @@all = []

    def initialize(content, restaurant, customer)
      @@all << self

      customer.reviews << self
      restaurant.reviews << self

      @restaurant = restaurant
      @customer = customer
      @content = content
    end
end
