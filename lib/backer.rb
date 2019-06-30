class Backer

    attr_reader :name # :backed_projects

    @@all = []

    def initialize(name)
        @name = name
        # @backed_projects = []
        @@all << self
    end

    def back_project(project)
        # @backed_projects << project
        # project.add_backer(self)
        BackedProject.new(self,project)
    end

    def self.all
        @@all
    end

    def projects
        my_projects = BackedProject.all.select { |backed_project| backed_project.backer == self }

        my_projects.map { |backed_project| backed_project.project }
    end
    
end