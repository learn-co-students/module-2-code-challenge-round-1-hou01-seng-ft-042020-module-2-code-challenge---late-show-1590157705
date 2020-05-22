# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Guest.destroy_all
Episode.destroy_all
Appearance.destroy_all

# require 'csv'

# csv_text = File.read(Rails.root.join('lib', 'seeds', 'daily_show_guests.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.first(100).each do |row|
#   g = Guest.find_or_initialize_by(name: row['Raw_Guest_List'].split(',').first )
#   g.occupation = row['GoogleKnowlege_Occupation']
#   g.save
# end

date = Date.parse('2015-09-08')

# (1..40).each do |num|
#   Episode.create(date: date, number: num)
#   date = date.next
# end

g1 = Guest.create(name: "GName1", occupation: "G1Occup")
g2 = Guest.create(name: "GName2", occupation: "G2Occup")
g3 = Guest.create(name: "GName3", occupation: "G3Occup")
g4 = Guest.create(name: "GName4", occupation: "G4Occup")

e1 = Episode.create(date: date, number: 1)
e2 = Episode.create(date: date, number: 2)
e3 = Episode.create(date: date, number: 3)
e4 = Episode.create(date: date, number: 4)

Appearance.create(rating: 5, guest: g1, episode: e1)
Appearance.create(rating: 5, guest: g2, episode: e1)
Appearance.create(rating: 5, guest: g3, episode: e2)
Appearance.create(rating: 5, guest: g4, episode: e3)
Appearance.create(rating: 5, guest: g1, episode: e4)
Appearance.create(rating: 5, guest: g2, episode: e3)