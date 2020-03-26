class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end
  
  def name
     @name
  end

  def reviews
    Review.all.select do |r|
      r.restaurant== self
    end
  end

  def customers 
    reviews.map do |r|
      r.restaurant.uniq()
    end
  end

  # def average_star_rating
  #    avg=0
  #    reviews.
  # end


end
