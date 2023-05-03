# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# On crée 100 films en utilisant la méthode `times` qui permet de boucler un certain nombre de fois
100.times do
  # On crée chaque film en utilisant la méthode `create` de la classe `Movie`
  Movie.create(
    # Le nom du film est généré de manière aléatoire à partir de la librairie Faker
    name: Faker::Movie.title,
    # L'année est un nombre aléatoire compris entre 1900 et 2020
    year: rand(1900..2020),
    # Le genre est choisi aléatoirement dans un tableau de genres possibles
    genre: ["action", "horreur", "comédie", "drame"].sample,
    # Le synopsis est généré de manière aléatoire à partir de la librairie Faker
    synopsis: Faker::Lorem.paragraph_by_chars(number: 150),
    # Le réalisateur est généré de manière aléatoire à partir de la librairie Faker
    director: Faker::Name.name,
    # La note Allociné est un nombre aléatoire entre 0 et 5, avec une décimale
    allocine_rating: rand(0.0..5.0).round(1),
    # Le film n'a pas encore été vu
    already_seen: false,
    # On n'a pas encore attribué notre propre note au film
    my_rating: nil
  )
end