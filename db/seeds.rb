require "open-uri"

puts "destroy users and praticians"

Favorite.destroy_all
User.destroy_all
Pratician.destroy_all
Symptom.destroy_all

puts "creating SYMPTOMS"

# ["Sommeil", "Peur", "Douleur", "Fatigue", "Poids", "Digestion", "Alimentation", "Stress", "Colère", "Deuil", "Tabac"].each do |symptom|
s0 = Symptom.create!(description: "Sommeil")
s1 = Symptom.create!(description: "Peur")
s2 = Symptom.create!(description: "Douleur")
s3 = Symptom.create!(description: "Fatigue")
s4 = Symptom.create!(description: "Poids")
s5 = Symptom.create!(description: "Digestion")
s6 = Symptom.create!(description: "Alimentation")
s7 = Symptom.create!(description: "Stress")
s8 = Symptom.create!(description: "Colère")
s9 = Symptom.create!(description: "Deuil")
s10 = Symptom.create!(description: "Tabac")

puts "created SYMPTOMS done"

puts "creating users"

user00 = User.create!(first_name: "Adolphe", last_name: "Thiers", email: "adolphe.thiers@gmail.com", password: "azerty", location: "Nantes", result_test: 1, symptom: s0)
user01 = User.create!(first_name: "Patrice", last_name: "de Mac Mahon", email: "patrice.macmahon@gmail.com", password: "azerty", location: "Nantes", result_test: 3)
user02 = User.create!(first_name: "Jules", last_name: "Grévy", email: "jules.grevy@gmail.com", password: "azerty", location: "Nantes", result_test: 1)
user03 = User.create!(first_name: "Sadi", last_name: "Carnot", email: "sadi.carnot@gmail.com", password: "azerty", location: "Nantes", result_test: 3)
user04 = User.create!(first_name: "Jean", last_name: "Casimir-Perier", email: "jean.casimir-perier@gmail.com", password: "azerty", location: "", result_test: 2)
user05 = User.create!(first_name: "Félix", last_name: "Faure", email: "felix.faure@gmail.com", password: "azerty", location: "Nantes", result_test: 1)
user06 = User.create!(first_name: "Émile", last_name: "Loubet", email: "emile.loubet@gmail.com", password: "azerty", location: "Nantes", result_test: 2)
user07 = User.create!(first_name: "Armand", last_name: "Fallières", email: "armand.fallieres@gmail.com", password: "azerty", location: "Nantes", result_test: 1)
user08 = User.create!(first_name: "Raymond", last_name: "Poincaré", email: "raymond.poincare@gmail.com", password: "azerty", location: "Nantes", result_test: 2)
user09 = User.create!(first_name: "Paul", last_name: "Deschanel", email: "paul.deschanel@gmail.com", password: "azerty", location: "Nantes", result_test: 3)
user10 = User.create!(first_name: "Alexandre", last_name: "Millerand", email: "alexandre.millerand@gmail.com", password: "azerty", location: "Nantes", result_test: 2)
user11 = User.create!(first_name: "Gaston", last_name: "Doumergue", email: "gaston.doumergue@gmail.com", password: "azerty", location: "Nantes", result_test: 1)
user12 = User.create!(first_name: "Paul", last_name: "Doumer", email: "paul.doumer@gmail.com", password: "azerty", location: "Nantes", result_test: 1)
user13 = User.create!(first_name: "Albert", last_name: "Lebrun", email:"albert.lebrun@gmail.com", password: "azerty", location: "Nantes", result_test: 1)

puts "created users"


puts "creating pratician"

p0 = Pratician.create!(first_name: "Yann", last_name: "Lecocq", job: "Hypnose", phone_number: "06.09.82.16.04", email: "yannlecocqhypnose44@gmail.com", address: "62 Bd Jean Ingres 44300 St Herblain", symptom: s0)
p1 = Pratician.create!(first_name: "Edith", last_name: "Wernert", job: "Hypnose", phone_number: "07.64.48.22.11", email: "", address: "62 Bd Jean Ingres 44300 St Herblain", symptom: s1)
p2 = Pratician.create!(first_name: "Laurence", last_name: "Bobet", job: "Hypnose", phone_number: "07.49.31.25.49", email: "laurence.bobet@gmail.com", address: "62 Bd Jean Ingres 44300 St Herblain", symptom: s2)
p3 = Pratician.create!(first_name: "Claire", last_name: "Pelletier", job: "Hypnose", phone_number: "06.85.62.14.42", email: "claire.pelletier@gmail.com", address: "62 Bd Jean Ingres 44300 St Herblain", symptom: s3)
p4 = Pratician.create!(first_name: "Gilles", last_name: "Chehade", job: "Hypnose", phone_number: " 07.66.39.73.94", email: "gilles@hypno.cat", address: "62 Bd Jean Ingres 44300 St Herblain", symptom: s4)

p5 = Pratician.create!(first_name: "Georges", last_name: "ABOU KHALIL", job: "Osthéopathie", phone_number: "02.40.73.40.99", email: "aboukhalil@hotmail.fr", address: "6, rue de la Fauvette 44100 NANTES", symptom: s5)
p6 = Pratician.create!(first_name: "Aude", last_name: "BASSET", job: "Osthéopathie", phone_number: "06.61.25.23.63", email: "basset.aude@gmail.com", address: "13, rue Jean XXIII 44470 CARQUEFOU", symptom: s6)
p7 = Pratician.create!(first_name: "Justine ", last_name: "BONFILLON", job: "Osthéopathie", phone_number: "07.85.20.18.54", email: "justinebasset@gmail.com", address: "30 ter, rue Martin Luther King 44240 LA CHAPELLE SUR ERDRE ", symptom: s7)
p8 = Pratician.create!(first_name: "Daniel", last_name: "CHOPINEAUX", job: "Osthéopathie", phone_number: "07.85.20.18.54", email: "d.chopineaux@gmail.com", address: "2 bis, rue d'Herbauges 44310 SAINT LUMINE DE COUTAIS ", symptom: s8)
p9 = Pratician.create!(first_name: "François ", last_name: "DE BOISJOLLY", job: "Osthéopathie", phone_number: "02.40.48.72.00", email: "frdeboisjolly@wanadoo.fr", address: "Cabinet d'Ostéopathie Monselet 12, rue de Carcouët", symptom: s9)

p10 = Pratician.create!(first_name: "Gwénaëlle", last_name: "De Buor", job: "Chiropracteur", phone_number: "06.23.92.73.23", email: "gwenaelledebuor@yahoo.fr", address: " 47 rue Littré 44100 Nantes", symptom: s10)
p11 = Pratician.create!(first_name: "Guillaume", last_name: "Martin", job: "Chiropracteur", phone_number: "09.67.01.02.52", email: "Martinguillaume@yahoo.com", address: "7 boulevard des sports Vertou (44120)", symptom: s0)
p12 = Pratician.create!(first_name: "Linda", last_name: "Moie Meurou", job: "Chiropracteur", phone_number: "02 40 45 34 76", email: "lindamoie@gmail.com", address: "8, rue du milan noir Z.A. Brehadour Guérande (44350)", symptom: s1)
p13 = Pratician.create!(first_name: "Claire", last_name: "Morosini", job: "Chiropracteur", phone_number: "06.17.38.42.04", email: "morosini.chiro@gmail.com", address: "7 rue de la Jaunais Montoir-de-Bretagne (44550)", symptom: s2)
p14 = Pratician.create!(first_name: "Manon ", last_name: "CHAIGNEAU", job: "Chiropracteur", phone_number: "07 87 74 30 00", email: "mchaigneau.chiropraxie@gmail.com", address: " 3 avenue Gustave Lusseaud Saint-Brevin-les-Pins (44250)", symptom: s3)

p15 = Pratician.create!(first_name: "Laetitia", last_name: "Machard", job: "Naturopathie", phone_number: "06.29.59.88.27", email: "http://laetitiamachard.site-solocal.com", address: "1 rue Bons Français 44000 Nantes ", symptom: s4)
p16 = Pratician.create!(first_name: "Bénédicte", last_name: "GIE", job: "Naturopathie", phone_number: "06.17.98.26.06", email: "benedictegie@yahoo.fr", address: " Cabinet Saint Jacques 13 boulevard Joliot Curie 44200 Nantes", symptom: s4)
p17 = Pratician.create!(first_name: "Eric", last_name: "Blasin", job: "Naturopathie", phone_number: "02.40.76.74.64", email: "http://www.naturopathe-iridologue.com", address: " 99 boulevard Anglais 44100 Nantes", symptom: s5)
p18 = Pratician.create!(first_name: "Juillard", last_name: "Nathalie", job: "Naturopathie", phone_number: "06.85.57.21.66", email: "http://www.nathaliejuillard.com", address: "49 rue Gourmette 44300 Nantes", symptom: s6)
p19 = Pratician.create!(first_name: "Aurélie", last_name: "Pereira", job: "Naturopathie", phone_number: "06.79.28.55.07", email: "http://www.lalyreikienergies.com", address: "rue Pays de la Loire 44300 Nantes", symptom: s7)

p20 = Pratician.create!(first_name: "Jordane", last_name: "Saunal", job: "Sonothérapie", phone_number: "06.85.85.44.64", email: "http://jordanesaunal-sonotherapie.com", address: "52 avenue Parc de Procé 44100 Nantes", symptom: s8)
p21 = Pratician.create!(first_name: "Marielle", last_name: "PICART", job: "Sonothérapie", phone_number: "06.82.51.56.58", email: "http://mariellepicart-kinesiologie.com/", address: "24 rue Noire 44000 Nantes", symptom: s9)
p23 = Pratician.create!(first_name: "Bénédicte", last_name: "GIE", job: "Sonothérapie", phone_number: "06.17.98.26.06", email: "https://www.medoucine.com/consultation/nantes/benedicte-gie/2977?utm_source=bouton-rdv&utm_medium=pack-com&utm_campaign=benedicte-gie", address: " Cabinet Saint Jacques 13 boulevard Joliot Curie 44200 Nantes", symptom: s10)
p24 = Pratician.create!(first_name: "Guyochet", last_name: "Guylène Guais", job: "Sonothérapie", phone_number: "07.68.29.79.74", email: "http://guyleneguaisguyochet.com/", address: "18 rue Vienne 44000 Nantes", symptom: s0)
p25 = Pratician.create!(first_name: "Ericka", last_name: "Robine", job: "Sonothérapie", phone_number: "06.43.05.57.68", email: "sonotherapeute.wixsite.com", address: "62 Bd Jean Ingres 44300 St Herblain", symptom: s1)


puts "creating pratician done"

# active storage seeds images

puts "creating photos for users"
file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1669740521/adolphe_wvny3s.jpg")
user00.photo.attach(io: file, filename: "adolphe.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1669740528/Patrice_kv2g0f.jpg")
user01.photo.attach(io: file, filename: "Patrice.png", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1669740525/erkan-kirdar-sTAlYP5P1rQ-unsplash_pd5kmz.jpg")
user02.photo.attach(io: file, filename: "Jules.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1669818718/Jean_kwu21d.jpg")
user03.photo.attach(io: file, filename: "Jean.jpg", content_type: "image/jpg")

puts "created photos for users"

puts "creating photos for praticians"

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1669818164/Claire_Pelletier_pyfffo.jpg")
p3.photo.attach(io: file, filename: "Claire.png", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1669818145/Yann_.L_ua6a9z.jpg")
p0.photo.attach(io: file, filename: "Yann.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1669818165/edith.Werner_hopt9i.jpg")
p21.photo.attach(io: file, filename: "Marielle.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1669818165/Laurence_bobet_aspvqt.jpg")
p19.photo.attach(io: file, filename: "bob.png", content_type: "image/png")

# file = URI.open("")
# p0.photo.attach(io: file, filename: "yann.jpg", content_type: "image/png")

puts "created photos for praticians"




puts "creating favorites"

favorites00 = Favorite.create!(user: user00, pratician: p0)
favorites01 = Favorite.create!(user: user00, pratician: p20)
favorites02 = Favorite.create!(user: user01, pratician: p15)
favorites03 = Favorite.create!(user: user01, pratician: p7)
favorites04 = Favorite.create!(user: user02, pratician: p8)
favorites05 = Favorite.create!(user: user02, pratician: p12)
favorites06 = Favorite.create!(user: user03, pratician: p4)
favorites07 = Favorite.create!(user: user03, pratician: p6)
favorites08 = Favorite.create!(user: user04, pratician: p17)
favorites09 = Favorite.create!(user: user04, pratician: p9)
favorites10 = Favorite.create!(user: user05, pratician: p23)
favorites11 = Favorite.create!(user: user05, pratician: p16)

puts "creating favorites done"

puts "creating SYMPTOMS"

["Sommeil", "Peur", "Douleur", "Fatigue", "Poids", "Digestion", "Alimentation", "Stress", "Colère", "Deuil", "Tabac"].each do |symptom|
  Symptom.create!(description: symptom)
end
puts "created SYMPTOMS done"
