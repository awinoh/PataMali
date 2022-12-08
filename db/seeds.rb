# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
puts "Start seeding..."

  user = Users.create(name: "Nicole", username: "LilShopper",email: "nicole_awino@gmail.com", password: "password")
  User.create(name: "Fenny", username: "Fens", email: "e_fenns@gmail.com", password: "password")
  User.create(name: "Renice", username:"Wabbit", email: "wabbit_renee@gmail.com", password: "password")

puts "Seeding done!"

