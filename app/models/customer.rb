class Customer
  attr_accessor :given_name, :family_name
  @@all=[]
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all<<self
  end
  
  def given_name
    @given_name
  end

  def family_name
    @family_name 
  end

  def self.all
    @@all
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def restaurants
    Review.all.select do |r|
      r.reviewed.uniq 
  end

  def add_review(restaurant, rating)
     
  end
   
  def num_reviews
    total=0
    Review.all.each do |r|
      total+=r.rating
    end
    total
  end

  def self.find_by_name(name)
    self.all.each do |name
      name.given_name==self.full_name
    end
    n.given_name
  end

  def self.find_all_by_given_name(name)
    
  end

  



end
