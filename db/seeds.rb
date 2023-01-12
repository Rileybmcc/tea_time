# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
tea1 = Tea.create(title: "Earl Grey", description: "Black tea", temperature: "100 degrees f", brew_time: "5 min" )
tea2 = Tea.create(title: "Jasmin", description: "Herbal tea", temperature: "90 degrees f", brew_time: "5 min" )
tea3 = Tea.create(title: "Irish Breakfast", description: "Black tea", temperature: "103 degrees f", brew_time: "4 min" )
