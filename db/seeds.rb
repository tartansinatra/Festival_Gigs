puts "deleting data"
Gig.delete_all
Artist.delete_all
Venue.delete_all

puts "creating artists"
a1 = Artist.create!(title: 'Hells Bells', description: "The UK's #1 AC/DC Tribute Act")
a2 = Artist.create!(title: 'Foo Fakers', description: "Wolverhampton's 2nd Best Foo Fighters Tribute Band")
a3 = Artist.create!(title: 'Kaiser Thiefs', description: "Rockers from Newcastle")


puts "creating venues"
v1 = Venue.create!(name: 'The Liquid Room', add_1: "9c Victoria St", town: 'Edinburgh', postcode: 'EH1 2HE')
v2 = Venue.create!(name: 'Whistle Binkies', add_1: "4-6 South Bridge", town: 'Edinburgh', postcode: 'EH1 1LL')
v3 = Venue.create!(name: 'Bannermans Bar', add_1: "202 Cowgate", town: 'Edinburgh', postcode: 'EH1 1NQ')
v4 = Venue.create!(name: "Sneeky Petes", add_1: '73 Cowgate', town: 'Edinburgh', postcode: 'EH1 1JW')

puts "creating gigs"
g1 = Gig.create!(start_date: "2016-02-01 17:00", end_date: "2016-02-01 18:59", capacity: 100, venue: v1, artist: a1)
Gig.create!(start_date: "2016-03-01 19:00", end_date: "2016-02-01 20:59", capacity: 100, venue: v2, artist: a2)
Gig.create!(start_date: "2016-04-01 21:00", end_date: "2016-02-01 22:59", capacity: 80, venue: v3, artist: a1)


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
