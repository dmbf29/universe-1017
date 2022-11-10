puts "Destroying all aliens..."
Alien.destroy_all
puts "Destroying all planets..."
Planet.destroy_all

puts "Creating planets..."
Planet.create!(
  name: 'Saturn',
  banner_url: 'https://cdn.britannica.com/00/81400-050-8BBE1CDA/Saturn-rings-composite-images-spacecraft-Cassini-Shadows-October-6-2004.jpg'
)

uranus = Planet.create!(
  name: 'Uranus',
  banner_url: 'http://astronomy.com/~/media/32FB49069A0C4876931474C31BF95777.jpg'
)
puts "... created #{Planet.count} planets"

puts "Creating aliens..."
Alien.create!(
  name: 'Sho',
  image_url: 'https://cdn.britannica.com/00/81400-050-8BBE1CDA/Saturn-rings-composite-images-spacecraft-Cassini-Shadows-October-6-2004.jpg',
  planet: uranus
)

Alien.create!(
  name: 'Yann',
  image_url: 'https://res.cloudinary.com/dmbf29/image/upload/c_fill,g_face/7jTDPipAwMTY6maAxPMf1z1z',
  planet: uranus
)

Alien.create!(
  name: 'Chewbacca',
  image_url: 'https://imageio.forbes.com/specials-images/dam/imageserve/958761228/960x0.jpg?format=jpg&width=960',
  planet: uranus
)

Alien.create!(
  name: 'E.T.',
  image_url: 'http://res.cloudinary.com/ybmedia/image/upload/c_crop,h_1125,w_2000,x_0,y_21/c_fill,f_auto,h_900,q_auto,w_1600/v1/m/a/c/acd9c520c19769ec1459e9ed234261b0b7fdc578/20-facts-might-know-et-extraterrestrial.jpg',
  planet: uranus
)

Alien.create!(
  name: 'Marvin the Martian',
  image_url: 'https://i.pinimg.com/736x/5c/bb/87/5cbb87ead6a3d901fb5ce15c87fd20d3--marvin-the-martian-looney-tunes.jpg',
  planet: uranus
)

Alien.create!(
  name: 'Kang and Kodos Johnson',
  image_url: 'https://media1.giphy.com/media/3o6MbeBXxFJhC1OUaQ/giphy.gif',
  planet: uranus
)

Alien.create!(
  name: 'Martian Leader',
  image_url: 'https://www.looper.com/img/gallery/the-untold-truth-of-mars-attacks/l-intro-1632752169.jpg',
  planet: uranus
)

Alien.create!(
  name: 'Predator',
  image_url: 'https://deadline.com/wp-content/uploads/2020/11/Predator-Creature.jpg?w=1000',
  planet: uranus
)

Alien.create!(
  name: 'Xenomorph XX121',
  image_url: 'https://media.wired.co.uk/photos/606db4e0c36e357873e6cd26/4:3/w_1704,h_1278,c_limit/alien_1.jpg',
  planet: uranus
)

Alien.create!(
  name: 'Zoidberg',
  image_url: 'https://imgflip.com/s/meme/Futurama-Zoidberg.jpg',
  planet: uranus
)

Alien.create!(
  name: 'Mark Zuckerberg',
  image_url: 'https://nypost.com/wp-content/uploads/sites/2/2022/11/mark-zuckerberg-57.jpg',
  planet: uranus
)

Alien.create!(
  name: 'Alf',
  image_url: 'https://upload.wikimedia.org/wikipedia/en/8/89/GordonShumway.png',
  planet: uranus
)
puts "... created #{Alien.count} aliens"

puts 'Creating powers....'
20.times do
  Power.create(name: Faker::Superhero.unique.power)
end
puts "... created #{Power.count} powers."
