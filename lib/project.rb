class Project

    attr_reader :title # :backers

    @@all = []

    def initialize(title)
        @title = title
        # @backers = []
        @@all << self
    end

    def add_backer(backer)
        # @backers << backer
        # backer.back_project(self)
        BackedProject.new(backer,self)
    end

    def self.all
        @@all
    end

    def backers
        my_backed_projects = BackedProject.all.select { |backed_project| backed_project.project == self}
        
        my_backed_projects.map { |backed_project| backed_project.backer }
    end
    
end