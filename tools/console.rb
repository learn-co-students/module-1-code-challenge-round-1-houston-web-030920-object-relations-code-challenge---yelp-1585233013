require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
c1 = Customer.new("Mel", "Kilic")
c2 = Customer.new("Finneas", "Eilish")
c3 = Customer.new("Barack", "Obama")
c4 = Customer.new("Barack", "Trump")
c5 = Customer.new("Finneas", "Not Eilish")

res1= Restaurant.new("The Best Restaurant")
res2= Restaurant.new("Your Favorite Restaurant")
res3= Restaurant.new("My Restaurant")

rev1= Review.new(c1, res2, 4)
rev2= Review.new(c1, res1, 7)
rev3= Review.new(c4, res2, 9)
rev4= Review.new(c2, res2, 2)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line