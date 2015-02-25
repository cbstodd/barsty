# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all

Product.create(name: 'absolut apeach vodka'.capitalize, price: Faker::Number.number(2), image:open('public/uploads/product/image/3/absolut_vodka.png'), description: Faker::Lorem.paragraph(1))
Product.create(name: 'absolut berry acai vodka'.capitalize, price: Faker::Number.number(2), image:open('public/uploads/product/image/3/absolut_vodka.png'), description: Faker::Lorem.paragraph(1))
Product.create(name: 'absolut citron vodka'.capitalize, price: Faker::Number.number(2), image:open('public/uploads/product/image/3/absolut_vodka.png'), description: Faker::Lorem.paragraph(1))
Product.create(name: 'absolut grapevine'.capitalize, price: Faker::Number.number(2), image:open('public/uploads/product/image/3/absolut_vodka.png'), description: Faker::Lorem.paragraph(1))
Product.create(name: 'absolut kurant vodka'.capitalize, price: Faker::Number.number(2), image:open('public/uploads/product/image/3/absolut_vodka.png'), description: Faker::Lorem.paragraph(1))
Product.create(name: 'absolut mango vodka'.capitalize, price: Faker::Number.number(2), image:open('public/uploads/product/image/3/absolut_vodka.png'), description: Faker::Lorem.paragraph(1))
Product.create(name: 'absolut raspberry vodka'.capitalize, price: Faker::Number.number(2), image:open('public/uploads/product/image/3/absolut_vodka.png'), description: Faker::Lorem.paragraph(1))
Product.create(name: 'absolut ruby red vodka'.capitalize, price: Faker::Number.number(2), image:open('public/uploads/product/image/3/absolut_vodka.png'), description: Faker::Lorem.paragraph(1))
Product.create(name: 'absolut swedish 100 vodka'.capitalize, price: Faker::Number.number(2), image:open('public/uploads/product/image/3/absolut_vodka.png'), description: Faker::Lorem.paragraph(1))
Product.create(name: 'absolut swedish 80 vodka'.capitalize, price: Faker::Number.number(2), image:open('public/uploads/product/image/3/absolut_vodka.png'), description: Faker::Lorem.paragraph(1))
Product.create(name: 'absolut wild tea vodka'.capitalize, price: Faker::Number.number(2), image:open('public/uploads/product/image/3/absolut_vodka.png'), description: Faker::Lorem.paragraph(1))
