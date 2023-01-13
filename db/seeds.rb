# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
@tea101 = Tea.create(title: "Earl Grey", description: "Black tea", temperature: "100 degrees f", brew_time: "5 min" )
@tea102 = Tea.create(title: "Jasmin", description: "Herbal tea", temperature: "90 degrees f", brew_time: "5 min" )
@tea103 = Tea.create(title: "Irish Breakfast", description: "Black tea", temperature: "103 degrees f", brew_time: "4 min" )
@user101 = Customer.create(first_name: "Henry", last_name: "Spencer", email: "HS@gmail", address: "1234 John St")
@user102 = Customer.create(first_name: "Shawn", last_name: "Spencer", email: "ShawnS@gmail", address: "1444 E 12th St")

@subscription101 = Subscription.create(title: "Breakfast Basket", price: 48.99, status: true , frequency: "Every 2 weeks", customer_id: @user101.id, tea_id: @tea101.id )

# @subscription101 = Subscription.create(title: "Breakfast Basket", price: 48.99, status: true , frequency: "Every 2 weeks", index_subscriptions_on_customer_id: @user101.id, index_subscriptions_on_tea_id: @tea101.id )
