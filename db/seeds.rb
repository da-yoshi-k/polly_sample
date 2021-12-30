room_names = ['松の間', '竹の間', '梅の間']
room_image_names = ['matsu.png', 'take.png', 'ume.png',]
3.times do |n|
  Room.create(name: room_names[n], image_name: room_image_names[n])
end
