# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Customers.destroy_all
c1 = Customers.create  :internetEmail => 'pose_kathlyn@gmail.com', :name => 'Makenna Wuckert', :phoneMobile => '1-613-512-0246'
c2 = Customers.create  :internetEmail => 'agree@outlook.com', :name => 'Suzanne Thiel', :phoneMobile => '648-930-7381'
c3 = Customers.create  :internetEmail => 'when@hotmail.com', :name => 'Beatrice Jakubowski', :phoneMobile => '339-126-9333'
c4 = Customers.create  :internetEmail => 'north97@yahoo.com', :name => 'Nestor Kulas', :phoneMobile => '1-339-033-6586'
c5 = Customers.create  :internetEmail => 'molestiae@outlook.com', :name => 'Luis Lehner', :phoneMobile => '1-405-161-8993'
c6 = Customers.create  :internetEmail => 'josiane@yahoo.com', :name => 'Kaley Price', :phoneMobile => '870.639.6668'
c7 = Customers.create  :internetEmail => 'column_autumn@hotmail.com', :name => 'Elvie Reilly', :phoneMobile => '473.578.7554'
c8 = Customers.create  :internetEmail => 'clare@gmail.com', :name => 'Sincere Grimes', :phoneMobile => '1-222-162-0869'
c9 = Customers.create  :internetEmail => 'guide28@hotmail.com', :name => 'Lavern Schuppe', :phoneMobile => '(487) 576-4918'
c10 = Customers.create :internetEmail => 'santiago@outlook.com', :name => 'Morton Hettinger', :phoneMobile => '1-922-153-1571'
puts "#{ Customers.count } customers created."

Products.destroy_all
p1 = Products.create :cost => '614.41', :stockLevel => '209', :productName => 'Unaottax', :description => 'how cheerfully we consignourselves to perdition!'
p2 = Products.create :cost => '454.55', :stockLevel => '746', :productName => 'Transapity', :description => 'True, they rather order me about some, and make me jump from spar tospar, like a grasshopper in a May meadow.'
p3 = Products.create :cost => '935.4', :stockLevel => '131', :productName => 'Biotanzap', :description => 'In much the same way do the commonalty lead their leaders in manyother things, at the same time that the leaders little suspect it.'
p4 = Products.create :cost => '455.45', :stockLevel => '577', :productName => 'Qvo sanflex', :description => 'It came inas a sort of brief interlude and solo between more extensiveperformances.'
p5 = Products.create :cost => '488.63', :stockLevel => '800', :productName => 'Toughcom', :description => 'On the contrary, passengers themselves mustpay.'
p6 = Products.create :cost => '738.06', :stockLevel => '604', :productName => 'Black keydox', :description => 'It is a way I have of driving off the spleen and regulating the circulation.'
p7 = Products.create :cost => '606.07', :stockLevel => '385', :productName => 'X- hotlight', :description => 'What does that indignity amount to, weighed,I mean, in the scales of the New Testament?'
p8 = Products.create :cost => '480.2', :stockLevel => '600', :productName => 'Bam-san', :description => 'Let the most absent-minded of men be plunged in his deepest reveries—stand that man on his legs, set his feet a-going, and he will infallibly lead you to water, if water there be in all that region.'
p9 = Products.create :cost => '806.35', :stockLevel => '873', :productName => 'Tampcandex', :description => 'But look! here come more crowds, pacing straight for the water, and seemingly bound for a dive.'
p10 = Products.create :cost => '255.8', :stockLevel => '242', :productName => 'Ron siltam', :description => 'Take almost any path you please, and ten to one it carries you down in a dale, and leaves you there by a pool in the stream.'
puts "#{ Products.count } Products created."

# Orders.destroy_all
# o1 = Orders.create :customerId => '1', :orderStatus => 'received', :date => '20200618'
# o2 = Orders.create :customerId => '1', :orderStatus => 'received', :date => '20200618'
# o3 = Orders.create :customerId => '3', :orderStatus => 'sent', :date => '20200618'

# OrderItems.destroy_all
# oi1 = OrderItems.create :