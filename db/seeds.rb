puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '111-222-3333', category: 'japanese'}
pizziatta = { name: 'Pizziatta', address: '56A Shoreditch High St, London E1 6PQ', phone_number: '111-222-3333', category: 'italian'}
anna = { name: 'Anna', address: '19 Boundary St, London E3 8JE', phone_number: '111-222-3333', category: 'french'}
chez_lien = { name: 'Chez_lien', address: '744 Shoreditch High St, London E1 7PR', phone_number: '111-222-3333', category: 'chinese'}
belgic = { name: 'Belgic', address: '23 Boundary St, London E2 7QE', phone_number: '111-222-3333', category: 'belgian'}

[dishoom, pizziatta, anna, chez_lien, belgic].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts 'Created #{restaurant.name}'
end
puts 'Finished!'
