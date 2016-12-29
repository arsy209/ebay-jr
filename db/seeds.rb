# What has been Seeded:

User.delete_all
Item.delete_all
Bid.delete_all


users = []

#----------------------------------------------------------------------------
# User 1

  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  users << User.create!({
                         first_name: first_name,
                         last_name: last_name,
                         username: Faker::Internet.user_name("#{first_name} #{last_name[0..2]}", %w(. _ -)),
                         email: Faker::Internet.free_email("#{first_name}.#{last_name}"),
                         password: Faker::Internet.password(8, 15),
                         location: Faker::Address.city})

#----------------------------------------------------------------------------
# User 2

first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  users << User.create!({
                         first_name: first_name,
                         last_name: last_name,
                         username: Faker::Internet.user_name("#{first_name} #{last_name[0..2]}", %w(. _ -)),
                         email: Faker::Internet.free_email("#{first_name}.#{last_name}"),
                         password: Faker::Internet.password(8, 15),
                         location: Faker::Address.city})

#----------------------------------------------------------------------------
# User 3

  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  users << User.create!({
                         first_name: first_name,
                         last_name: last_name,
                         username: Faker::Internet.user_name("#{first_name} #{last_name[0..2]}", %w(. _ -)),
                         email: Faker::Internet.free_email("#{first_name}.#{last_name}"),
                         password: Faker::Internet.password(8, 15),
                         location: Faker::Address.city})

#----------------------------------------------------------------------------
# User 4

  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  users << User.create!({
                         first_name: first_name,
                         last_name: last_name,
                         username: Faker::Internet.user_name("#{first_name} #{last_name[0..2]}", %w(. _ -)),
                         email: Faker::Internet.free_email("#{first_name}.#{last_name}"),
                         password: Faker::Internet.password(8, 15),
                         location: Faker::Address.city})

#----------------------------------------------------------------------------
# User 5

  users << User.create!({
                         first_name: "Cinderalla",
                         last_name: "longtimeago",
                         username: Faker::Internet.user_name("#{first_name} #{last_name[0..2]}", %w(. _ -)),
                         email: Faker::Internet.free_email("#{first_name}.#{last_name}"),
                         password: Faker::Internet.password(8, 15),
                         location: "Maaarrs"})


#----------------------------------------------------------------------------
# ITEMS

items = []

#----------------------------------------------------------------------------
# Violin

items << Item.create!({
                        name: "The World's smallest drum",
                        description: "This drum, crafted in 1912, is the world's smallest violin, and it can be all yours today. This drum is a party favorite, and perfect for all that really emotional situations where you'd just love to mock someone.",
                        price: 5.00,
                        start_time: Faker::Time.between(DateTime.now - 1, DateTime.now),
                        end_time: Faker::Time.forward(7, :evening),
                        seller: User.find(1)
    })

#----------------------------------------------------------------------------
# Bicycle

items << Item.create!({
                        name: "The Large Wheeled car",
                        description: "The large, front-wheeled car is as unique as it gets, and can be a great way to traverse town in style.",
                        price: 50.00,
                        start_time: Faker::Time.backward(3, :morning),
                        end_time: Faker::Time.forward(4, :evening),
                        seller: User.find(2)
    })

#----------------------------------------------------------------------------
# Lundqvist Jersey

items << Item.create!({
                        name: "Dimder's New York Ranger Hockey Jersey",
                        description: "Dimder's goalie sweater, with large number 30, and Stanley Cup Playoffs Logo.",
                        price: 50.00,
                        start_time: Faker::Time.backward(4, :evening),
                        end_time: Faker::Time.forward(2, :evening),
                        seller: User.find(3)
    })

#----------------------------------------------------------------------------
# Donald Trump's Hair

items << Item.create!({
                        name: "Donald Trump's Hair",
                        description: "You can steal away this great item at next to nothing. It's great to have on your mantle over your fireplace, or as a nice paperweight for your desk in your den.",
                        price: 1.00,
                        start_time: Faker::Time.backward(7, :evening),
                        end_time: Faker::Time.forward(0.0104666666),
                        seller: User.find(4)
    })

#----------------------------------------------------------------------------
# My Favorite Hat

items << Item.create!({
                        name: "My favorite Hat",
                        description: "This is my all time favorite hat, and I have never let anyone else wear it, ever. I've had it for years, but I think it's finally time to pass it on, and let someone else experience how great this hat is.
It could be yours, just enter a bid! :)",
                        price: 10.00,
                        start_time: Faker::Time.between(DateTime.now - 1, DateTime.now),
                        end_time: Faker::Time.forward(7, :evening),
                        seller: User.find(1)
    })

#----------------------------------------------------------------------------
# Brian Lee's Heart

items << Item.create!({
                        name: "FOOD MASTER 200",
                        description: "You can steal away this great item at next to nothing. It's great to have on your mantle over your fireplace, or as a nice paperweight for your desk in your den.",
                        price: 100.00,
                        start_time: Faker::Time.between(DateTime.now - 1, DateTime.now),
                        end_time: Faker::Time.forward(7, :evening),
                        seller: User.find(3)
    })

#----------------------------------------------------------------------------
# iPhone 6s Plus

items << Item.create!({
                        name: "iPhone 7 Plus w/ Screen protector and extra charger",
                        description: "Selling my 2016 iPhone 7 Plus, Rose Gold, with charger, and screen protector.

Call 1(516) 867 - 5309 for more information.",
                        price: 800.00,
                        start_time: Faker::Time.between(DateTime.now - 1, DateTime.now),
                        end_time: Faker::Time.forward(7, :evening),
                        seller: User.find(5)
    })

#----------------------------------------------------------------------------
# BIDS

#----------------------------------------------------------------------------
# Item 1

Bid.create!({
             bid_amount: 5.50,
             bidder: User.find(5),
             item: Item.find(1)
  })

violin = Item.find(1)
violin.assign_attributes(price: 5.50)
violin.save

Bid.create!({
             bid_amount: 5.75,
             bidder: User.find(2),
             item: Item.find(1)
  })

violin = Item.find(1)
violin.assign_attributes(price: 5.75)
violin.save
#----------------------------------------------------------------------------
# Item 2

Bid.create!({
             bid_amount: 60.00,
             bidder: User.find(4),
             item: Item.find(2)
  })

bicycle = Item.find(2)
bicycle.assign_attributes(price: 60.00)
bicycle.save

Bid.create!({
             bid_amount: 65.00,
             bidder: User.find(3),
             item: Item.find(2)
  })

bicycle = Item.find(2)
bicycle.assign_attributes(price: 65.00)
bicycle.save

#----------------------------------------------------------------------------
# Item 3

Bid.create!({
             bid_amount: 60.00,
             bidder: User.find(2),
             item: Item.find(3)
  })

jersey = Item.find(3)
jersey.assign_attributes(price: 60.00)
jersey.save

Bid.create!({
             bid_amount: 125.00,
             bidder: User.find(1),
             item: Item.find(3)
  })

jersey = Item.find(3)
jersey.assign_attributes(price: 125.00)
jersey.save

#----------------------------------------------------------------------------
# Item 4

Bid.create!({
             bid_amount: 1.75,
             bidder: User.find(2),
             item: Item.find(4)
  })

trump = Item.find(4)
trump.assign_attributes(price: 1.75)
trump.save

Bid.create!({
             bid_amount: 2.25,
             bidder: User.find(3),
             item: Item.find(4)
  })

trump = Item.find(4)
trump.assign_attributes(price: 2.25)
trump.save

Bid.create!({
             bid_amount: 2.75,
             bidder: User.find(1),
             item: Item.find(4)
  })

trump = Item.find(4)
trump.assign_attributes(price: 2.75)
trump.save

#----------------------------------------------------------------------------
# Item 5

Bid.create!({
             bid_amount: 10.50,
             bidder: User.find(4),
             item: Item.find(5)
  })

hat = Item.find(5)
hat.assign_attributes(price: 10.50)
hat.save

Bid.create!({
             bid_amount: 12.50,
             bidder: User.find(1),
             item: Item.find(5)
  })

hat = Item.find(5)
hat.assign_attributes(price: 12.50)
hat.save
