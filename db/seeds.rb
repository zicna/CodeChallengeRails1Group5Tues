# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Party.find_or_create_by(name:"Halloween", date:Time.now, category:"scary", supplies: "Balloons and Things", private: false, budget: 500)
# Party.find_or_create_by(name:"Xmas Party", date:Time.now, category:"cheery", supplies: "snowman, candycane, and cookies", private: true, budget: 75)
# Party.find_or_create_by(name:"Dog Birthday", date:Time.now, category:"fun", supplies: "Dog cake, treats, and toys ", private: true, budget: 200)
# Party.find_or_create_by(name:"4th of July", date:Time.now, category:"fun", supplies: "grill, hotdogs, and hamburgers ", private: false, budget: 50)


# holiday = Category.find_or_create_by(name: "Holiday")
# birthday = Category.find_or_create_by(name: "Birthday")
# balloon = Supply.find_or_create_by(name: "Balloon")
# cake = Supply.find_or_create_by(name: "Cake")
# hotdog = Supply.find_or_create_by(name: "Hot Dogs")
# Party.find_or_create_by(name:"Halloween", date:Time.now, category: holiday, supplies: [balloon, cake], private: false, budget: 500)
# Party.find_or_create_by(name:"Xmas Party", date:Time.now, category: holiday, supplies: [balloon, cake], private: true, budget: 175)
# Party.find_or_create_by(name:"Dog Birthday", date:Time.now, category: birthday, supplies: [balloon, cake, hotdog], private: true, budget: 200)
# Party.find_or_create_by(name:"4th of July", date:Time.now, category: holiday, supplies: [balloon, cake, hotdog], private: false, budget: 150)



categories = [
    {name: "Holiday"},
    {name: "Birthday"},
    {name: "Garden"},
    {name: "Tea party"},
    {name: "Dinner"}
]

categories.each do |category|
    Category.find_or_create_by(name: category[:name])
end



supplies = [
    {name: "Ballon"},
    {name: "Cake"},
    {name: "Drinks"},
    {name: "Snacks"},
    {name: "Toys"},
    {name: "confetti"},
    {name: "Cups"},
    {name: "Table decorations"},
    {name: "Foam"},
    {name: "Water"},

]

supplies.each do |supply|
    Supply.find_or_create_by(name: supply[:name])
end



parties = [
    {
        name:"Halloween", date:Time.now, category_id: 1, private: false, budget: 500

    },
    {
        name:"Xmas Party", date:Time.now, category_id: 1, private: true, budget: 175
    }
]

parties.each do |party|
    Party.create(party)
end

party_supplies = [
    {
        party_id: 1,
        supply_id: 1
    },
    {
        party_id: 1,
        supply_id: 2 
    },
    {
        party_id: 1,
        supply_id: 3
    },
    {
        party_id: 1,
        supply_id: 4
    },
    {
        party_id: 2,
        supply_id: 1
    },
    {
        party_id: 2,
        supply_id: 5
    },
    {
        party_id: 1,
        supply_id: 6
    },
    {
        party_id: 1,
        supply_id: 7
    }
]

party_supplies.each do |new_row| 
    PartySupply.create(new_row)
end