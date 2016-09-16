resto = Restaurant.create!({
  name: "Le Dindon en Laisse",
  address: "18 Rue Beautreillis, 75004 Paris, France"
})
puts "#{resto.name} created"
resto = Restaurant.create!({
  name: "Neuf et Voisins",
  address: "Van Arteveldestraat 1, 1000 Brussels, Belgium"
})
puts "#{resto.name} created"

john = User.create!(email: 'john@beatles.com', password: 'testtest', avatar_url: 'http://vignette1.wikia.nocookie.net/peel/images/d/d6/John_Lennon.jpg/revision/latest?cb=20130925121148')
paul = User.create!(email: 'paul@beatles.com', password: 'testtest', avatar_url: 'http://beatlesthe.free.fr/img/paul.jpg')
ringo = User.create!(email: 'ringo@beatles.com', password: 'testtest', avatar_url: '')
george = User.create!(email: 'george@beatles.com', password: 'testtest', avatar_url: '')