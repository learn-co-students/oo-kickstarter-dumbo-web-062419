
require 'pry'

class Backer
  attr_reader :backed_projects
  attr_accessor :name

  def initialize(name, backed_projects = [])
    @name = name
    @backed_projects = backed_projects
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self
  end

end




# When a Backer instance is initialized,
# it should be initialized with a @backed_projects variable set to an empty array.
# Instances of the Backer class should have an attr_reader for backed projects.
# This way, a backer can report on the projects they back.
