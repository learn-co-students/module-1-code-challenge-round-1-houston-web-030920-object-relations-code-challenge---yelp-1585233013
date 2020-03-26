class Restaurant

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end

  end

  def customers
    list_customers = []
    reviews.each do |review|
      list_customers << review.customer
    end
    return list_customers.uniq

  end


  def average_start_rating
    total = 0
    reviews.each do |review|
      total += review.rating 
    end

    return total/reviews.count

  end

  



end
