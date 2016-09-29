alicheur = Restaurant.create!({
  name: "Alicheur",
  address: "103 rue oberkampf, 75011, Paris"
})

esprit_tchai = Restaurant.create!({
  name: "Esprit tchai",
  address: "103 boulevard voltaire, 75011, Paris"
})


dim = User.create!(email: 'dim@gmail.com', password: 'testtest')
ju = User.create!(email: 'ju@gmail.com', password: 'testtest')

ju.up_votes(alicheur)
dim.up_votes(alicheur)