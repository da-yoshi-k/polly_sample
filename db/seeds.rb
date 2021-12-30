# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

room_names = ['松', '竹', '梅']
room_image_names = ['matsu.png', 'take.png', 'ume.png',]
3.times do |n|
  Room.create(name: room_names[n], image_name: room_image_names[n])
end
