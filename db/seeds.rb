Gig.delete_all
Artist.delete_all
Venue.delete_all

Gig.create!(date: 01/02/2016, time: 1700, capacity: 100)

Artist.create!(title: 'Hells Bells', description: 'The UKs #1 AC/DC Tribute Act')

Venue.create!(name: 'Liquid Room')

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
