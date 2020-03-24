# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'database_cleaner'

DatabaseCleaner.clean_with(:truncation)

monsur = User.create(username: "Monsur", password: "123")

purplerain = Content.create(name: "Prince, Purple Rain", source: "TvnYmWpD_T8", description: "Purple Rain is a song by Prince and The Revolution. It is the title track from the 1984 album of the same name.", image: "https://upload.wikimedia.org/wikipedia/en/thumb/8/86/Purple-rain-cover.jpg/220px-Purple-rain-cover.jpg", kind: "song")

purplelike = Like.create(user_id: monsur.id, content_id: purplerain.id)


gunsandroses = Content.create(name: "Guns and Roses, Sweet Child of Mine", source: "1w7OgIMMRc4", description: "One of Guns and Roses greatest hits.", image: "https://upload.wikimedia.org/wikipedia/en/thumb/1/15/Guns_N%27_Roses_-_Sweet_Child_o%27_Mine.png/220px-Guns_N%27_Roses_-_Sweet_Child_o%27_Mine.png", kind: "song" )

gunslike = Like.create(user_id: monsur.id, content_id: gunsandroses.id)