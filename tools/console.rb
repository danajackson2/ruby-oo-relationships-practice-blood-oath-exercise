require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Cult.new
c1.name = "cult 1"
c1.location = "Seattle"
c1.founding_year = 1645
c2 = Cult.new
c2.name = "cult 2"
c2.location = "San Fran"
c2.founding_year = 2020
c3 = Cult.new
c3.name = "cult 3"
c3.location = "Seattle"
c3.founding_year = 1800

f1 = Follower.new
f1.name = "fol 1"
f1.age = 20
f2 = Follower.new
f2.name = "fol 2"
f2.age = 30
f3  = Follower.new
f3.name = "fol 3"
f3.age = 103

b1 = BloodOath.new(c1, f1)
b2 = BloodOath.new(c1, f2)
b3 = c1.recruit_follower(f3)
b4 = BloodOath.new(c2, f3)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits