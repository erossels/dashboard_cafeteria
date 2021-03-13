# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

blends = []
origins = []

10.times do
  blends.append(Faker::Coffee.blend_name)
  origins.append(Faker::Coffee.origin)
end

1000.times do
  Sale.create({
      blend: blends.sample,
      origin: origins.sample,
      amount: rand(1..10),
      price: amount*rand(1990..5490),
      date: Faker::Date.between(from: '2017-01-01', to: Date.today)
  })
end