class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    arr = []
    Review.all.each do |review|
      if review.restaurant == self
        arr << review
      end
    end
    arr
  end

  def customers
    arr = []
    reviews.each do |review|
      arr << review.customer
    end
    arr.uniq
  end

  def average_star_rating
    total = 0
    reviews.each do |review|
      total += review.rating
    end
    total = total / self.reviews.count

  end

end
