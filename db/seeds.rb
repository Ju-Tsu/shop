#This file should contain all the record creation needed to seed the database with its default values
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.first_or_create!(name: 'Hearthstone card')
10.times do |index|
  Item.create(title: "My #{index + 1} item", description: "Better than #{index} item", price: index * 100, category: Category.first)
end

AdminUser.first_or_create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?