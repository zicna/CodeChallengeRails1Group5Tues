# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Party.find_or_create_by(name:"Halloween", date:Time.now, category:"scary", supplies: "Balloons and Things", private: false, budget: 500)
Party.find_or_create_by(name:"Xmas Party", date:Time.now, category:"cheery", supplies: "snowman, candycane, and cookies", private: true, budget: 75)
Party.find_or_create_by(name:"Dog Birthday", date:Time.now, category:"fun", supplies: "Dog cake, treats, and toys ", private: true, budget: 200)
Party.find_or_create_by(name:"4th of July", date:Time.now, category:"fun", supplies: "grill, hotdogs, and hamburgers ", private: false, budget: 50)