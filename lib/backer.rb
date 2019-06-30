class Backer
    attr_accessor :name, :backed_projects
    
    @@all = []

    def initialize(name)
        @name = name
        @backed_projects = []

        @@all << self
    end

    def back_project(project)
        @backed_projects << project
        project.backers << self unless project.backers.include?(self)
    end
end