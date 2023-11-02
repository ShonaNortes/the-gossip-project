# Exemple d'utilisation de Faker pour créer des potins aléatoires
puts "Potins :"
5.times do
  author = Faker::Name.unique.name
  gossip = Faker::ChuckNorris.fact
  puts "#{author} dit : #{gossip}"
end
