class Project

    attr_accessor :backers, :title
    @@all = []

    def initialize(title)
        @title = title
        @backers = []

        @@all << self
    end

    def add_backer(backer)
        @backers << backer
        backer.backed_projects << self unless backer.backed_projects.include?(self)
    end
    
end