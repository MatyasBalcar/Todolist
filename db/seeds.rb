# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.create(name: "Matyas",surname:"Balcar", email: "matyas.balcar@gmail.com",password:"123456")
project = Project.create(title:"Projekt titulek", position: 1, user: user)
task = Task.create(title:"Task titulek", description: "Task popisek",is_done: false, project:project, user:user)
