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
12.times do 
    User.create!(name: Faker::FunnyName.two_word_name , age: rand(17..45), user_name:Faker::Internet.username , password_digest:"password")
end 
puts "Creating your swag 👒👘👟"
Swag.create!(name: "Canada Goose Langford", image_url:"https://images.canadagoose.com/image/upload/w_1333,c_scale,f_auto,q_auto:best/v1583261363/product-image/9512M_67_a.jpg")
Swag.create!(name: "Plums dunks", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSY6mf38wHlkORvOX6Jnlrx5p5PRT8NLoiB2Q&usqp=CAU")
Swag.create!(name: "Valentine day dunks", image_url:"https://gcs.justfreshkicks.com/2020/01/e9fd70aa-057d82f6-cbb4-42c1-8b64-27663506ee29.png")
Swag.create!(name: "2019 Supreme Bogo", image_url:"https://img.ch-webdev.com/ra/uploads/w_raw_3295299679-1-324x324.jpg")
Swag.create!(name: "Travis Scott Air Force", image_url:"https://www.nicekicks.com/files/2019/11/leadTravisScottAF1-11-13-robmata-1-1200x640.jpg")
Swag.create!(name: "Louis v Bag", image_url:"https://www.purseblog.com/images/2020/02/Louis-Vuitton-Onthego-Tote-3.jpg")
Swag.create!(name: "Gucci Hoodie", image_url:"https://cdna.lystit.com/photos/flannels/626c8ab3/gucci-Black-1082-Hologram-Fake-Logo-Hooded-Sweatshirt.jpeg")
Swag.create!(name: "Dior Air Jordan 1", image_url:"https://static.highsnobiety.com/thumbor/cVYnAZyMtW9xOsAxBGKMsC2zqKw=/720x432/static.highsnobiety.com/wp-content/uploads/2019/12/04011323/dior-nike-air-jordan-1-000.jpg")
Swag.create!(name: "Dior Jacket", image_url:"https://static-buyma-jp.akamaized.net/imgdata/item/191012/0048066710/221341046/428.jpg")
Swag.create!(name: "North Face Supreme 2020", image_url:"https://ultranyc.com/wp-content/uploads/2020/10/supreme-the-north-face-fall-winter-2020-4.jpg")
Swag.create!(name: "North Face Supreme Nuptse", image_url:"https://designerhype.ru/products/2017/12/SN_714EB720AE6D/supreme-north-face-nuptse-leopard-green-coat.jpg")
Swag.create!(name: "Off White Prestos", image_url:"https://i.pinimg.com/originals/31/83/36/3183369fae25a93af4105dbaa3974a92.png")
Swag.create!(name: "Off White Blazers", image_url:"https://www.kicksonfire.com/wp-content/uploads/2018/08/OFF-WHITE-x-Nike-Blazer-Mid-All-Hallows-Eve-2.jpeg")
Swag.create!(name: "Off White Jacket", image_url:"https://is4.fwrdassets.com/images/p/fw/zs/OFFF-WO17_V1.jpg")
Swag.create!(name: "Canada Goose Bomber", image_url:"https://cdn.shopify.com/s/files/1/1938/1617/products/canada-goose-mens-chilliwack-bomber-jacket-black-sale-online-buy-fur_grande.jpg?v=1600276675" )
Swag.create!(name: "Mackage Edward", image_url:"https://www.mackage.com/dw/image/v2/BBWV_PRD/on/demandware.static/-/Sites-mk-master-catalog/default/dw8199f7c2/images/EDWARD-BX-BLBL_1.jpg?sw=417&sh=704&sm=cut&q=100")

puts "Creating User_swag 🕺🏻🧥💃🏻"
16.times do 
UserSwag.create!(user_id: User.all.sample.id, swag_id: Swag.all.sample.id, rating:rand(0..5), rent_price: rand(10..50), review:Faker::TvShows::RickAndMorty.quote)
end 

# user swag attriubtes 
# t.integer "user_id"
# t.integer "swag_id"
# t.integer "rating"
# t.string "review"
# t.boolean "rent"
# t.boolean "buy"
# t.integer "rent_price"

