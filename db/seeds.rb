# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Account.delete_all
Property.delete_all
News.delete_all

ActiveRecord::Base.connection.tables.each do |t|
    ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

# Accounts
April = Account.create! :first_name => "April", :last_name => "O'Neil", :email =>  "april@example.com", :password => "123abc", :password_confirmation => "123abc", :encrypted_password => "123abc", :image => "https://cosmicbook.news/wp-content/uploads/2023/03/april-o-neil-tmnt-cartoon.jpg", :company => "Turtles", :telephone => "1234567890", :background_image => "https://static.wikia.nocookie.net/tmnt/images/2/22/Dx30.png/revision/latest?cb=20151019202208", :admin => true
April.skip_confirmation!
April.save!

Leo = Account.create! :first_name => "Leonardo", :last_name => "Turtle", :email =>  "leo@example.com", :password => "123abc", :password_confirmation => "123abc", :encrypted_password => "123abc", :image => "https://cdn.shopify.com/s/files/1/2528/8830/products/Leonardo566pin_1024x.png?v=1619393997", :company => "Turtles", :telephone => "1234567890", :background_image => "https://media.istockphoto.com/id/1266832146/vector/abstract-modern-city-skyline-seamless-vector-pattern.jpg?s=612x612&w=0&k=20&c=rkSXzvbF4cm6szelnof81pMVFdORQp7U6oWRPDULVDQ="
Leo.skip_confirmation!
Leo.save!

Donny = Account.create! :first_name => "Donatello", :last_name => "Turtle", :email =>  "donny@example.com", :password => "123abc", :password_confirmation => "123abc", :encrypted_password => "123abc", :image => "https://static.miraheze.org/greatcharacterswiki/thumb/f/fc/ImageDonatelloSeasons1-5.png/330px-ImageDonatelloSeasons1-5.png", :company => "Turtles", :telephone => "1234567890", :background_image => "https://res.klook.com/images/fl_lossy.progressive,q_65/c_fill,w_1200,h_630/w_80,x_15,y_15,g_south_west,l_Klook_water_br_trans_yhcmh3/activities/iwmnxckx70qssfd84vke/Fast%20Track%20Access%20to%20the%20Prado%20Museum%20in%20Madrid,%20Spain.jpg"
Donny.skip_confirmation!
Donny.save!

Raph = Account.create! :first_name => "Raphael", :last_name => "Turtle", :email =>  "raph@example.com", :password => "123abc", :password_confirmation => "123abc", :encrypted_password => "123abc", :image => "https://images.fun.com/products/84137/2-1-221598/tmnt-ultimates-raphael-7-inch-action-figure-alt-2.jpg", :company => "Turtles", :telephone => "1234567890", :background_image => "https://www.popphoto.com/app/uploads/2019/01/17/3FLFGO2GRERNRRVSYOCYJR2CT4.jpg"
Raph.skip_confirmation!
Raph.save!

Mikey = Account.create! :first_name => "Michelangelo", :last_name => "Turtle", :email =>  "mikey@example.com", :password => "123abc", :password_confirmation => "123abc", :encrypted_password => "123abc", :image => "https://static.wikia.nocookie.net/tmnt2012series/images/8/88/2012_Michelangelo_clean_character_image.png/revision/latest?cb=20130809041043", :company => "Turtles", :telephone => "1234567890", :background_image => "https://t4.ftcdn.net/jpg/02/75/92/41/360_F_275924184_GP4ACV80EK8NokxlFaUB2qykpXKrroqx.jpg"
Mikey.skip_confirmation!
Mikey.save!

# Properties


# News/Announcements
News.create(account_id: 1, title: "Hello World", content: "Hello World this is the first announcment I hope you enjoy your time browsing Abodes Galore. Create an account and upload a property for yourself and share it with your friends. Let us know what you think and have a great day!", photo: "https://t3.ftcdn.net/jpg/03/13/59/86/360_F_313598699_jyO0OFvaccHWe9YsAY1s8Ycpf0qVPIVz.jpg")



print "SEED COMPLETE"