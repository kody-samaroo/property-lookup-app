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

# # Accounts

# # Properties
# Property.create(account_id: 1, name: "Capri Shores" , address: "19843 Capri Shores Ln, Stafford, TX 77477", price: 290000, rooms: 4, bathrooms: 2, sqft: 1617, photo: "https://photos.zillowstatic.com/fp/85b9a1238cb58c37deb0b68dd635638d-cc_ft_768.webp", details: "Colina Homes believes in building your dream 1-Story w/ 4 Bedrooms + 2 Full Baths +  Large Covered Patio at a price you CAN afford! Come see this NEW open-concept home with space in all the right places.", for_sale: true)
# Property.create(account_id: 1, name: "West Dickens" , address: "6834 W Dickens Ave, Chicago, IL 60707", price: 435000, rooms: 4, bathrooms: 3, sqft: 1982, photo: "https://photos.zillowstatic.com/fp/89e300a905d41d271a62cef547cb56b5-cc_ft_1536.webp", details: "Come see this nicely decorated and well maintained home. You can't miss it.  It's the only one with a RED front door. Bright living room with southern exposure and 3 sided bay window. Refinished hardwood floors in living room, dining room and 2 bedrooms on main floor. Good sized kitchen was remodeled in 2005; and has breakfast nook, granite countertops, Thomasville maple wood cabinets and stainless steel appliances. Connecting to the kitchen is an additional room that has been a recreation room, but may also serve as a den or an office. The second floor has been converted (2012) into 2 huge bedrooms, including the master bedroom, and a modern full bathroom. The home has 2 separate HVAC systems, 1 for the main floor and 1 for the 2nd floor.  The basement is partially finished and waiting for you decoration ideas.  There is also a 2.5 car garage.  Between the house and the garage is a cozy patio with an overheard shelter for rainy day grilling.  Rutherford Sayre Park is 2 blocks away. Has many activities, tennis courts, soccer fields, children's activity programs.", for_sale: true)
# Property.create(account_id: 1, name: "Avenue 57" , address: "226 Avenue 57, # 206, Los Angeles, CA 90042", price: 2650, rooms: 2, bathrooms: 1, sqft: 750, photo: "https://photos.zillowstatic.com/fp/2e5d4397c325d396296ab426c8ccba72-cc_ft_576.webp", details: "Normally 3000, we're giving a $350/mo credit for at least your first 12 months to bring it to $2650/mo. Updated vintage 2 bed / 1 bath in a unique complex right in the heart of Highland Park! With wall-to-wall hardwood floors, a fully-loaded kitchen w/ breakfast bar and a washer/dryer IN unit, this is the perfect spot to call home in a unique gated community!", for_sale: false)
# Property.create(account_id: 1, name: "Lake Drive" , address: "17 E Lake Dr, Annapolis, MD 21403", price: 2500, rooms: 2, bathrooms: 1, sqft: 656, photo: "https://photos.zillowstatic.com/fp/e1fc90e4b223e2ea58bc5927411673d9-cc_ft_1152.webp", details: "Enjoy the Beauty and Amenities of Bay Ridge. Modest Cottage 2 Bedrooms 1 Full Bath 1 Car Garage. New Carpet, Freshly Painted. Large Backyard, 3 Season Front Porch, Livingroom, & Dining Room. 2023-03-27", for_sale: true)
# Property.create(account_id: 1, name: "125st Ter" , address: "12383 SW 125th Ter, Miami, FL 33186", price: 4000, rooms: 4, bathrooms: 3, sqft: 2310, photo: "https://photos.zillowstatic.com/fp/d425fdda05a2bfe27c81154186df0cc1-cc_ft_1152.webp", details: "Beautiful Townhouse in Kendall Breeze South, ROMA model, 4 bedrooms, 3 full bathrooms, including a bedroom and full bathroom on the first floor, the laundry room with washer/dryer on second floor, 2 car garages, is available immediately for occupancy; great location, nice neighborhood, community with gym, 2 playgrounds, 3 pools, security 24 hours and lots of greenery. Close to Turnpike and 874 Don Shula Expy.", for_sale: true)



# print "SEED COMPLETE"