# Exemple d'utilisation de Faker pour créer des potins aléatoires
5.times do
    Gossip.create(
      author: Faker::Name.name,
      content: Faker::Lorem.sentence
    )
  end
