# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Party.create_or_find_by(name:"Halloween", date:Time.now, category:"scary", supplies: "Balloons and Things", private: false)
Party.create_or_find_by(name:"Xmas Party", date:Time.now, category:"cheery", supplies: "snowman, candycane, and cookies", private: true)