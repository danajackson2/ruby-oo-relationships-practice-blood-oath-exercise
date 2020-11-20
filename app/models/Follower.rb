class Follower
    attr_accessor :name, :age, :life_motto

    @@all = []

    def initialize
        @@all << self
    end


    def self.all
        @@all
    end

    def cults
        BloodOath.all.select{|oath| oath.follower == self ? oath.cult : nil }
    end

    def join_cult(cult)
        BloodOath.new(cult, self)
    end

    def self.of_a_certain_age(age)
        self.all.select{|fol| fol.age >= age}
    end
end
