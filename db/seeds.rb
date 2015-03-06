# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all

Product.create(name: 'absolut vodka'.upcase, price: Faker::Number.number(2),
               image:open('public/uploads/product/image/1/absolut_vodka.png'), description: Faker::Lorem.paragraph(1))
Product.create(name: 'patron silver'.upcase, price: Faker::Number.number(2),
               image:open('public/uploads/product/image/1/patron_silver.jpg'), description: Faker::Lorem.paragraph(1))
Product.create(name: 'jack daniels'.upcase, price: Faker::Number.number(2),
               image:open('public/uploads/product/image/1/old-no7.png'), description: Faker::Lorem.paragraph(1))
Product.create(name: 'Bacardi superior'.upcase, price: Faker::Number.number(2),
               image:open('public/uploads/product/image/1/Bacardi_Superior.jpg'), description: Faker::Lorem.paragraph(1))
Product.crate(name: 'Makers Mark'.upcase, price: Faker::Number.number(2),
              image:open('public/uploads/product/image/1/mm.jpg'), description: Faker::Lorem.paragraph(1))
