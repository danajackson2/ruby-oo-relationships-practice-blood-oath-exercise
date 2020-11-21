require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Cult.new("cult 1", "Seattle", 1645, "Live Forever")
c2 = Cult.new("cult 2", "San Fran", 2020, "Code all day")
c3 = Cult.new("cult 3", "Seattle", 1800, "Living for the weekend")

f1 = Follower.new("fol 1", 20, "I am cool")
f2 = Follower.new("fol 2", 31, "I'm bored")
f3  = Follower.new("fol 3", 103, "i am oooooold")

b1 = BloodOath.new(c1, f1)
b2 = BloodOath.new(c1, f2)
b3 = c1.recruit_follower(f3)
b4 = BloodOath.new(c2, f3)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits