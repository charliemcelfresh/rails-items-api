# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

1000.times do
  User.create(email: Faker::Internet.unique.email)
end

100.times do
  Item.create(name: Faker::Commerce.unique.product_name)
end

User.all.each do |u|
  Item.all.each do |item|
    u.user_items.create(item: item)
  end
end
