class Customer
  attr_accessor :given_name, :family_name
  @@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end
  
  def self.all
    @@all
  end

  def restaurants
    list_restaurants = []
    Review.all.each do |review|
      if review.customer == self
        list_restaurants << review.restaurant
      end
    end
    return list_restaurants.uniq
  end

  def add_review(restaurant,rating)
    Review.new(self,restaurant,rating)

  end

  def num_reviews
    total = 0
    Review.all.each do |review|
      if review.customer == self
        total += 1
      end
    end
    return total

  end

  def self.find_by_name(name)
     Customer.all.find do |customer|
      customer.full_name == name
    end

  end


  def self.find_all_by_given_name(name)
    array = []
    Customer.all.select do |customer|
      customer.given_name == name
    end
  end
    








end

#  array = []
# Customer.all.include?(name)
# array << customer.full_name

# return array[0]