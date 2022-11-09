puts "Destroying all planets..."
Planet.destroy_all

puts "Creating planets..."
Planet.create!(
  name: 'Saturn',
  banner_url: 'https://cdn.britannica.com/00/81400-050-8BBE1CDA/Saturn-rings-composite-images-spacecraft-Cassini-Shadows-October-6-2004.jpg'
)
puts "... created #{Planet.count} planets"
