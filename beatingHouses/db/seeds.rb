# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Building.destroy_all
PointOfInterest.destroy_all
Borough.destroy_all

Borough.create!(name: "bronx", gradRate: 40.23234, crimeRate: 12.12039)
Building.create!(address: "something street", buildingCategory: "some category", price: 120394.12, sqFoot: 1230923, units: 500, year: 2000, borough: "bronx", borough_id:1)
PointOfInterest.create!(name: "some park", lat: 123.12312312, long: 1209.123123, borough: "bronx", borough_id:1)

