require_relative 'backer.rb'
require_relative 'project.rb'
require_relative 'backedproject.rb'
require 'pry'

backer1 = Backer.new("James")
backer2 = Backer.new("Titan")
backer3 = Backer.new("Mr. Krabs")

project1 = Project.new("Area 51")
project2 = Project.new("Project X")

# backed_project1 = BackedProject.new(backer1,project1)
# backed_project2 = BackedProject.new(backer2,project1)
backer2.back_project(project1)
backer1.back_project(project2)
backer2.back_project(project2)

project1.add_backer(backer3)

binding.pry