# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |i|
  billboard = Billboard.create(title: "Billboard_Top_#{i}")

  5.times do |j|
    billboard.artists.create(
      artist_name: "name_#{i}_#{j}",
      song_name: "song_#{i}_#{j}"
      )
  end
end