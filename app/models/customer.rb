class Customer
  attr_accessor :given_name, :family_name
  @@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def restaurants
    arr = []
    Review.all.each do |review|
      if review.customer == self
        arr << review.restaurant
      end
    end
    arr.uniq
  end
 
  #ask Josh!!
  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    total = 0
    Review.all.each do |review|
      if review.customer == self
        total += 1
      end
    end
    total
  end

  def self.find_by_name(name)
    self.all.find do |customer|
      customer.full_name == name
  end
end

  def self.find_all_by_given_name(name)
    arr = []
    self.all.each do |customer|
      if customer.given_name == name
        arr << customer
      end
  end
  arr
  end
end
