class Cult
    
    attr_accessor :name, :location, :founding_year, :slogan
    
    @@all = []

    def initialize
        @@all << self
    end

    def recruit_follower(follower)
        BloodOath.new(self, follower) 
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
     
end