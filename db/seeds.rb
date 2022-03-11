# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Task.destroy_all

t1 = Task.create(name:'Get up',         date: '2022-03-12 06:00:00' , points:50)
t2 = Task.create(name:'Breakfast',      date: '2022-03-12 06:30:00' , points:50)
t3 = Task.create(name:'Work out',       date: '2022-03-21 07:00:00' , points:50)
t4 = Task.create(name:'Get dressed',    date: '2022-03-21 07:30:00' , points:50)

t1.objectives.create(name:'turn on the tea pot')
t1.objectives.create(name:'wash dishes')
t1.objectives.create(name:'do all exercises')
t1.objectives.create(name:'shave and shower' )

puts "Task: #{Task.all.size}" 
puts "objectives: #{Objective.all.size}" 