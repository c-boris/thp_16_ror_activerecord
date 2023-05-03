# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

rails generate model Movie name:string year:integer genre:string synopsis:text director:string allocine_rating:float my_rating:integer already_seen:boolean

rails db:migrate

rails db:migrate:status

rails console

film1 = Movie.new

film1.name = "Beowulf"

film1.year = 1999

film1.genre = "Fantastique"

film1.synopsis = "La Terre a traverse de nombreuses crises et cataclysmes. Les hommes vivent dans la peur et dans l'obscurite car les tenebres voilent desormais la lumiere du soleil. Dans cet univers hostile, erre un homme maudit et solitaire, Beowulf, fruit des amours interdites d'une mortelle avec le diable. Pour vaincre le monstre qui est en lui, Beowulf doit combattre le mal. Son plus redoutable adversaire est une creature tapie dans les combles d'une forteresse. Invincible, d'une sauvagerie sans nom, elle tue quotidiennement puis disparait des l'aube."

film1.director = "Graham Baker"

film1.allocine_rating = 1.1

film1.my_rating = 3

film1.already_seen = true

film1.save

Movie.all

Movie.create(name: "L'Exorciste", year: 1974, genre: "Epouvante-horreur", synopsis: "L'actrice Chris McNeil est inquiète au sujet de sa fillette Regan : après que l'on ait entendu des bruits curieux venant de sa chambre, la petite a changé, proférant de constantes insanités. Une force para-normale l'habite, qui coûte la vie au metteur en scène de Chris. Désespérée, cette dernière fait appel à deux exorcistes...", director: "William Friedkin", allocine_rating: 4.0, my_rating: 4, already_seen: true)

Movie.create(name: "OSS 117, Le Caire nid d'espions", year: 2006, genre: " Comédie", synopsis: "Égypte, 1955, le Caire est un véritable nid d'espions. Tout le monde se méfie de tout le monde, tout le monde complote contre tout le monde : Anglais, Français, Soviétiques, la famille du Roi déchu Farouk qui veut retrouver son trône, les Aigles de Kheops, secte religieuse qui veut prendre le pouvoir. Le Président de la République Française, Monsieur René Coty, envoie son arme maîtresse mettre de l'ordre dans cette pétaudière au bord du chaos : Hubert Bonisseur de la Bath, dit OSS 117.", director: "Michel Hazanavicius", allocine_rating: 3.7, my_rating: 2, already_seen: true)

Movie.create(name: "Dune", year: 2021, genre: "Science fiction", synopsis: "L'histoire de Paul Atreides, jeune homme aussi doué que brillant, voué à connaître un destin hors du commun qui le dépasse totalement. Car s'il veut préserver l'avenir de sa famille et de son peuple, il devra se rendre sur la planète la plus dangereuse de l'univers – la seule à même de fournir la ressource la plus précieuse au monde, capable de décupler la puissance de l'humanité. Tandis que des forces maléfiques se disputent le contrôle de cette planète, seuls ceux qui parviennent à dominer leur peur pourront survivre…", director: "Denis Villeneuve", allocine_rating: 4.3, my_rating: 4, already_seen: true)

movie = Movie.find(1)
movie.update(allocine_rating: 4.7)

movie = Movie.find(2)
movie.update(genre: "Comédie")

Movie.where(already_seen: true)
Movie.where(already_seen: true).pluck(:name)

movie = Movie.where(already_seen: true).first
movie.destroy if movie

gem "table_print"
bundle install

rails console
tp movie.all

gem 'faker'
bundle install

rails db:reset

rails console
tp movie.all

mon_film = Movie.where(id: 35..45)
mon_film.each do |film|
  film.update(already_seen: true, my_rating: 4)
end
