# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'geokit'
require 'csv'

include GeoKit::Geocoders

Building.destroy_all
#PointOfInterest.destroy_all
#Borough.destroy_all
=begin
csv_text = File.read(Rails.root.join("lib", "seeds", "borough-data-test.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  borough = Borough.new
  borough.name = row['name']
  borough.grad_rate = row['grad_rate']
  borough.crime_rate = row['crime_rate']
  borough.save
end

index = 0

csv_text = File.read(Rails.root.join("lib", "seeds", "interest_points.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  borough = Borough.find_by(name: row['borough'])
  index += 1
  if borough == nil
    puts "ERROR for "+index.to_s #some interest points have no borough, not added for now
  else
    borough.point_of_interests.create(name: row['name']) do |p|
   #   points = s.match("POINT\((\S{2,18})\, (\S{2,18}[^)])")
      cor = row['coordinate'].tr('POINT( )', '').split(',')
      p.lat = cor[1]
      p.long = cor[0]
    end
  end
end
=end
csv_text = File.read(Rails.root.join("lib", "seeds", "houses.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  borough = Borough.find_by(name: row['borough'])
  borough.buildings.create(address: row['address']) do |b|
    coords = MultiGeocoder.geocode(row['address'])
    b.building_category = row['building_class']
    b.price = row['sale_price']
    b.square_foot = row['square_footage']
    b.units = row['residential_units']
    b.year = row['year_built']
    b.lat = coords.lat
    b.long = coords.lng
  end
end

