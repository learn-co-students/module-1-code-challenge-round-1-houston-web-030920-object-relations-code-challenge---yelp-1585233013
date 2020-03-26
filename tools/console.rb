require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


c1 = Customer.new("Rafa","Valdez")
c2 = Customer.new("Ruth","Obe")
c3 = Customer.new("Melike", "Looke")
c4 = Customer.new("John", "Peterson")
c5 = Customer.new("Carmen", "Lara")


r1 = Restaurant.new("Los tacos")
r2 = Restaurant.new("Ostines")
r3 = Restaurant.new("Hooters")
r4 = Restaurant.new("Twin peaks")
r5 = Restaurant.new("Caballoso")
r6 = Restaurant.new("Memelas")

rev1 = Review.new(c1,r1,10)
rev2 = Review.new(c3,r4,7)
rev3 = Review.new(c2,r3,8)
rev4 = Review.new(c4,r2,9)
rev5 = Review.new(c5,r1,6)
rev6 = Review.new(c1,r2,6)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line