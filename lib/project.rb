class Project

    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title

        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
      
        ProjectBacker.new(self, backer)
    end

    def backers
        all_backers = ProjectBacker.all.select do |i|
            i.project == self
        end
        
        all_backers.map do |j|
            j.backer
        end
    end
end

