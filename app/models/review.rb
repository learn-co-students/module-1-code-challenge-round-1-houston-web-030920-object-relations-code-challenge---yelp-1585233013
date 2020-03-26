class Review
    @@all = []
    attr_reader :rating , :customer, :restaurant
  def initialize(customer, restaurant,rating)
   @customer = customer
   @restaurant = restaurant
   @rating = rating
   @@all << self
  end

  def self.all
    @@all
  end

  
end