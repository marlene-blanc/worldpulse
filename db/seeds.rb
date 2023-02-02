# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
puts "Cleaning up database..."
Post.destroy_all
User.destroy_all
puts "Database cleaned"

user1 = User.create!(email: "titi@gmail.com", nickname: "titi", password: "tititi")
user2 = User.create!(email: "tata@gmail.com", nickname: "tata", password: "tatata")

puts "Creating Posts"


post1 = Post.create!(title: "Afghanistan : 'Le pays est entré dans la nuit depuis seize mois', se désole l'ambassadeur
                     de France en Afghanistan", content: "Après avoir interdit aux Afghanes d'étudier dans les
                     universités, les talibans ont annoncé qu'elles n'avaient plus le droit de travailler pour les ONG
                     nationales et internationales.", url: "https://www.francetvinfo.fr/monde/afghanistan/afghanistan-le-pays-est-entre-dans-la-nuit-depuis-seize-mois-se-desole-l-ambassadeur-de-france-en-afghanistan_5571285.html",
                     user_id: user1.id)
post1.save

post2 = Post.create!(title: "Qui gagne la guerre de l'énergie ?", content: "Impatients de renoncer aux combustibles
                     russes pour asphyxier le Kremlin, les pays européens ont improvisé des solutions de rechange.
                     Ils paient désormais leur impréparation: envolée des prix, ralentissement économique, nouvelles
                     allégeances diplomatiques. Les États-Unis, eux, se frottent les mains…",
                     url: "https://www.monde-diplomatique.fr/2022/06/REYMOND/64753",
                     user_id: user1.id)
post2.save

post3 = Post.create!(title: " Vu d'Inde. Abandonner ou s'accrocher ? Le dilemme des étudiants indiens des universités
                     ukrainiennes", content: "Des milliers de jeunes Indiens étudiaient la médecine en Ukraine lorsque
                     la guerre a éclaté. Évacués grâce à un réseau d'entraide, ils luttent aujourd'hui pour poursuivre
                     leur cursus universitaire dans les pays voisins ou en Inde. Mais beaucoup ont jeté l'éponge.",
                     url: "https://www.courrierinternational.com/article/vu-d-inde-abandonner-ou-s-accrocher-le-dilemme-des-etudiants-indiens-des-universites-ukrainiennes",
                     user_id: user1.id)
post3.save

post4 = Post.create!(title: "Rétrospective. L'année 2022 en cartoons : le meilleur des dessinateurs de presse du monde
                     entier", content: "Le dessin de presse et “Courrier international”, c'est un long compagnonnage.
                     Nous vous proposons de revisiter avec les dessinateurs l'année écoulée,marquée au fer rouge par le
                     retour de la guerre en Europe avec le conflit sanglant en Ukraine. Politique, dérèglement
                     climatique, sport et culture… Rien n'échappe aux dessinateurs du monde entier. Voici 2022 dans ses
                     meilleurs et ses pires moments, légers ou graves. C'est l'année en cartoons.",
                     url: "https://www.courrierinternational.com/long-format/retrospective-l-annee-2022-en-cartoons-le-meilleur-des-dessinateurs-de-presse-du-monde-entier",
                     user_id: user2.id)
post4.save

post5 = Post.create!(title: "Le déclin de l'OMC, une menace pour la stabilité mondiale", content: "La remise en cause de
                     la position centrale de l'Organisation mondiale du commerce dans la coordination des échanges
                     mondiaux est une pente dangereuse, qui risque d'aboutir à la primauté de la loi du plus fort, au
                     pire moment.",
                     url: "https://www.lemonde.fr/idees/article/2022/12/28/le-declin-de-l-omc-une-menace-pour-la-stabilite-mondiale_6155881_3232.html",
                     user_id: user2.id)
post5.save

post6 = Post.create!(title: "Une « voix » indigène au Parlement soumise au référendum en 2023", content: "(Sydney)
                     L'Australie soumettra au référendum en 2023 un amendement de sa Constitution qui pourrait donner
                     aux indigènes une « voix » au Parlement, a annoncé mercredi le gouvernement. ",
                     url: "https://www.lapresse.ca/international/asie-et-oceanie/2022-12-28/australie/une-voix-indigene-au-parlement-soumise-au-referendum-en-2023.php",
                     user_id: user2.id)
post6.save

puts "Posts created"
