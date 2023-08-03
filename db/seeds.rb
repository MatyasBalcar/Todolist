# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.create(name: "Matyas",surname:"Balcar", email: "matyas.balcar@gmail.com",password:"123456")
project2 = Project.create(title:"Projekt titulek", position: 1, user: user)
project = Project.create(title:"Projekt titulek2", position: 2, user: user)
task = Task.create(title:"Task titulek", description: "Task popisek",is_done: false, project:project, user:user)
task2 = Task.create(title:"Task titulek", description: "Task popisek2",is_done: false, project:project, user:user)
task3 = Task.create(title:"Task titulek", description: "Task popisek",is_done: false, project:project2, user:user)
task4 = Task.create(title:"Task titulek", description: "Task popisek2",is_done: false, project:project2, user:user)

user2 = User.create(name: "Petr",surname:"Balcar", email: "petr.balcar@gmail.com",password:"123456")
project3 = Project.create(title:"Projekt titulek", position: 1, user: user2)
project4 = Project.create(title:"Projekt titulek2", position: 2, user: user2)
task = Task.create(title:"Task titulek", description: "Task popisek",is_done: false, project:project3, user:user2)
task2 = Task.create(title:"Task titulek", description: "Task popisek2",is_done: false, project:project3, user:user2)
task3 = Task.create(title:"Task titulek", description: "Task popisek",is_done: false, project:project4, user:user2)
task4 = Task.create(title:"Task titulek", description: "Task popisek2",is_done: false, project:project4, user:user2)