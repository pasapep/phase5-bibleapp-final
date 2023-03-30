# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeding..."
User.create(name: "user", email: "user@email.com", password:"password")
Verse.create(details:"Jacob’s anger burned against Rachel, and he said, “Am I in God’s place, who has withheld from you the fruit of the womb?”\n", verse: "Genesis 30:2");
puts "seeding stopped successfully..."