Projets : Des app Rails avec BDD et Model
  
Des app Rails avec BDD et Model
Il est temps pour toi de mettre en pratique tes nouvelles compétences sur les models de Rails : on va créer des BDD complètes et les seeder

1. Introduction
Dans ce projet, on va se focaliser sur la première étape de la création d'une app Rails : mettre en place les models et la BDD. On va te faire créer plusieurs models et peupler plusieurs BDD avec des entrées créées soit en console, soit via un seed.

2. Le projet
2.1. Exo 1 : Allociné
Dans cet exercice, on va te faire créer une app Rails dont la BDD contiendra des films. Dans un premier temps, tu vas créer le model et la BDD. Ensuite on va te faire manipuler tout ça avec la console. Pour finir, tu vas seeder ta BDD.

Ici on ne fait que de la manipulation pour t'habituer à jouer avec les models. Tu n'as aucun travail de conception de ta BDD car on va te donner des instructions précises.

Let's go ! 🎬

2.1.1. Mise en place du model et de la BDD
Commence par créer une application Rails. Ensuite, tu vas générer un model Movie (rappelle-toi, les noms des models sont forcément au singulier !) dont les attributs seront les suivants :

name qui porte le nom du film et est de type string.
year qui porte l'année de sortie et est de type integer.
genre qui porte le type de film (horreur, action, etc.) et est de type string.
synopsis qui porte le résumé du film et est de type text.
director qui porte le nom du réalisateur et est de type string.
allocine_rating qui porte le score "spectateur" visible sur allocine.fr et est de type float.
my_rating qui porte ton score personnel sur le film et est de type integer.
already_seen qui indique si tu as déjà vu le film et est de type boolean.
2.1.2. Jouons en console
Ok, si tu arrives ici, c'est que tu as créé le model, préparé la migration pour générer la table movies et que tu as passé la migration. C'est bien ça ?

Commence, par pure conscience professionnelle, par vérifier si la migration est bien passée avec un petit rails db:migrate:status. C'est bon, elle est bien en up ? Parfait, passons aux exercices.

a) Un premier film à la mano
On va commencer par saisir un chef d’œuvre du cinéma franco-américain : Beowulf.

Va dans la console de rails et initialise un film avec un petit film1 = Movie.new.

Maintenant tu vas saisir en console la valeur de chaque attribut de Beowulf en te référant à la page Allociné du film. Je veux que tu fasses une ligne par attribut. Par exemple pour le nom tu vas faire tout simplement :

2.5.1 :001 > film1.name = "Beowulf"
Répète l'opération pour chaque attribut. Tu peux laisser my_rating à nil si tu n'as pas vu le film.

N'oublie pas de finir l'opération par un petit film1.save pour inscrire tout ça en BDD. Voilà un premier film de saisi ! Tu peux vérifier qu'il a bien été enregistré en faisant des petits Movie.last ou Movie.all. Profites-en pour vérifier qu'aucun attribut n'a été oublié.

b) Deux films à la mano mais efficace
Bon, c'était sympa ce petit échauffement mais maintenant on va rentrer 2 films en une seule ligne de console. Je te donne les liens Allociné pour le premier et pour le second.

Tu vas les insérer chacun en BDD en écrivant une seule ligne dans ta console (via un create donc). Inspire-toi de l'exemple ci-dessous en le complétant avec tous attributs existants :

2.5.1 :00 > Movie.create(name: "xxxx", year: 1999, already_seen: false)
Vérifie à chaque fois que tu as bien réussi en faisant des Movie.last ou Movie.all.

c) Un peu de freestyle
Ta BDD est fonctionnelle, tu as déjà créé trois entrées… il est temps de lâcher les chevaux 🐎 ! Voici ce que je veux que tu fasses :

Crée une entrée avec un film de ton choix (un film que tu as déjà vu). Je veux juste que l'ensemble des attributs soient renseignés.
Modifie la note Allociné de Beowulf pour qu'elle soit à 4,7. Ce chef-d’œuvre mérite d'être reconnu comme tel.
Modifie le genre de l'Exorciste pour que ça soit une comédie. Avec un peu de chance ta petite soeur va tomber dessus.
Affiche, avec une commande en Movie.where, l'ensemble des films que tu as déjà vus.
À partir de cet array de films que tu as déjà vus, supprime le premier de ta BDD.
Maintenant que tu as effectué toutes ces modifications en console, je veux que tu affiches le contenu de ta BDD grâce à la gem table print. Pour que ça soit moins moche, n'hésite pas à limiter le nombre de colonne affichées.

d) Le seed : aux BDD bien créées, la valeur n'attend point le nombre des années
On ne va pas se contenter de quelques films : il est temps de voir comment notre application réagirait avec une BDD bien remplie. Je vais te demander de préparer un seed de plein de Movie en respectant ces contraintes :

Tu vas créer 100 films avec du contenu venant de Faker.
Le nom de chaque film doit être plausible.
L'année doit être comprise entre 1900 et 2020.
Le genre doit être l'une des valeurs suivantes : ["action", "horreur", "comédie", "drame"]
Chaque synopsis doit être composé d'au moins 10 mots
Le réalisateur doit être un nom plausible.
La note Allociné doit être aléatoire et comprise entre 0 et 5. Il ne faut pas que ça soit uniquement des entiers : on veut 1 chiffre après la virgule.
Le already_seen doit être à false et my_rating à nil.
Tu peux supprimer, si nécessaire, les 3-4 films que tu as créés dans les questions précédentes.

Maintenant que les 100 entrées sont créées, affiche le tout en console avec table_print (ne mets pas toutes les colonnes). Balade-toi, en scrollant, dans la liste et repère 10 films que tu trouves bien funs (noms improbables, etc.). Pour chacun de ces films tu vas faire comme si tu venais de les visionner :

Retrouve-les soit via leur id avec Movie.find ou via leur nom avec Movie.find_by(name: "xxx") puis affecte-les à une variable du genre mon_film.
Passe alors leur already_seen en true.
Donne leur une note dans my_rating.
Bien joué ! Tu as là une base de données qui est 1) fonctionnelle et 2) assez plausible pour servir à tester (par exemple) un allociné-like.





