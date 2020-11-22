require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Cult.new("cult 1", "Seattle", 1645, "Live Forever")
c2 = Cult.new("cult 2", "San Fran", 2020, "Code all day")
c3 = Cult.new("cult 3", "Seattle", 1800, "Living for the weekend")
c1.minimum_age = 50

f1 = Follower.new("Rob", 20, "I am cool")
f2 = Follower.new("Mary", 31, "I'm bored")
f3  = Follower.new("Lil Stinker", 103, "i am oooooold")

b1 = BloodOath.new(c1, f1)
b2 = BloodOath.new(c1, f2)
b3 = c1.recruit_follower(f3)
b4 = BloodOath.new(c2, f3)
b6 = BloodOath.new(c3, f1)
b7 = BloodOath.new(c2, f2)




binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits