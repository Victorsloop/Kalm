# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

UserSwag.destroy_all
Swag.destroy_all 
User.destroy_all

puts "Creating your users 🤑"
User.create!(name: "Karina", age: 18, user_name:"Karina" , password_digest:"password")
User.create!(name: "Victor", age: 21, user_name:"Victor" , password_digest:"password")
User.create!(name: "Greg", age: 24, user_name:"User3" , password_digest:"password")
User.create!(name: "Drake", age: 27, user_name:"User4" , password_digest:"password")

puts "Creating your swag 👒👘👟"
Swag.create!(name: "Canada Goose", image_url:"https://images.canadagoose.com/image/upload/w_1333,c_scale,f_auto,q_auto:best/v1583261363/product-image/9512M_67_a.jpg" , price:rand(10..100))
Swag.create!(name: "Plums dunks", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSY6mf38wHlkORvOX6Jnlrx5p5PRT8NLoiB2Q&usqp=CAU" , price:rand(10..100))
Swag.create!(name: "Valentine day dunks", image_url:"https://gcs.justfreshkicks.com/2020/01/e9fd70aa-057d82f6-cbb4-42c1-8b64-27663506ee29.png" , price:rand(10..100))
Swag.create!(name: "2019 Bogo", image_url:"https://img.ch-webdev.com/ra/uploads/w_raw_3295299679-1-324x324.jpg" , price:rand(10..100))

puts "Creating User_swag 🕺🏻🧥💃🏻"
4.times do 
UserSwag.create!(user_id: User.all.sample.id, swag_id: Swag.all.sample.id, rating:rand(0..5), review:Faker::TvShows::RickAndMorty.quote)
end 

# t.references :user
# t.references :swag
# t.integer :rating
# t.string :review
# t.boolean :rent
# t.boolean :buy

