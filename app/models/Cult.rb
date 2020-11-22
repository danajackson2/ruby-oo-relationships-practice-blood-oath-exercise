class Cult
    
    attr_reader :name, :location, :founding_year, :slogan
    attr_accessor :minimum_age
    
    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @locaton = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def recruit_follower(follower)
        if follower.age >= self.minimum_age
            BloodOath.new(self, follower)
        else
            "Sorry, #{follower.name} you are too young, try again next year."
        end
    end

    def cult_population
        BloodOath.all.select{|oath| oath.cult == self ? oath.follower : nil}.length
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        self.all.find{|cult| cult.name == name}
    end

    def self.find_by_location(loc)
        self.all.select{|cult| cult.location == loc}
    end

    def self.find_by_founding_year(year)
        self.all.select{|cult| cult.founding_year == year}
    end

    def average_age
        arr = []
        BloodOath.all.select do |oath| 
            if oath.cult == self
                arr << oath.follower.age
            end
        end
        (arr.sum.to_f)/(arr.length.to_f).round(2)
    end

    def my_followers_mottos
        BloodOath.all.select do |oath| 
            if oath.cult == self
                puts oath.follower.life_motto
            end
        end
    end

    def self.least_popular
        self.all.min_by{|cult| cult.cult_population}
    end

    def self.most_common_location
        hash = {}
        self.all.each {|cult| hash[cult.location] ? hash[cult.location] += 1 : hash[cult.location] = 1} 
        hash.max_by{|k, v| v}[0]
    end

 
   

   

end