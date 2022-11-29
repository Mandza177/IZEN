puts "creating users"

user00 = User.create!(first_name: "Adolphe", last_name: "Thiers", email: "adolphe.thiers@gmail.com", password: "azerty", location: "", resul_test: 1)
user01 = User.create!(first_name: "Patrice", last_name: "de Mac Mahon", email: "patrice.macmahon@gmail.com", password: "azerty", location: "", resul_test: 3)
user02 = User.create!(first_name: "Jules", last_name: "Grévy", email: "jules.grevy@gmail.com", password: "azerty", location: "", resul_test: 1)
user03 = User.create!(first_name: "Sadi", last_name: "Carnot", email: "sadi.carnot@gmail.com", password: "azerty", location: "", resul_test: 3)
user04 = User.create!(first_name: "Jean", last_name: "Casimir-Perier", email: "jean.casimir-perier@gmail.com", password: "azerty", location: "", resul_test: 2)
user05 = User.create!(first_name: "Félix", last_name: "Faure", email: "felix.faure@gmail.com", password: "azerty", location: "", resul_test: 1)
user06 = User.create!(first_name: "Émile", last_name: "Loubet", email: "emile.loubet@gmail.com", password: "azerty", location: "", resul_test: 2)
user07 = User.create!(first_name: "Armand", last_name: "Fallières", email: "armand.fallieres@gmail.com", password: "azerty", location: "", resul_test: 1)
user08 = User.create!(first_name: "Raymond", last_name: "Poincaré", email: "raymond.poincare@gmail.com", password: "azerty", location: "", resul_test: 2)
user09 = User.create!(first_name: "Paul", last_name: "Deschanel", email: "paul.deschanel@gmail.com", password: "azerty", location: "", resul_test: 3)
user10 = User.create!(first_name: "Alexandre", last_name: "Millerand", email: "alexandre.millerand@gmail.com", password: "azerty", location: "", resul_test: 2)
user11 = User.create!(first_name: "Gaston", last_name: "Doumergue", email: "gaston.doumergue@gmail.com", password: "azerty", location: "", resul_test: 1)
user12 = User.create!(first_name: "Paul", last_name: "Doumer", email: "paul.doumer@gmail.com", password: "azerty", location: "", resul_test: 1)
user13 = User.create!(first_name: "Albert", last_name: "Lebrun", email:"albert.lebrun@gmail.com", password: "azerty", location: "", resul_test: 1)

puts "created users"


puts "creating pratician"

Yann Lecocq = [first_name: "Yann", last_name: "Lecocq", job: "Hypnose", phone_number: "06.09.82.16.04", email: "yannlecocqhypnose44@gmail.com", address: "62 Bd Jean Ingres 44300 St Herblain"]
Edith Wernert = [first_name: "Edith", last_name: "Wernert", job: "Hypnose", phone_number: "07.64.48.22.11", email: "", address: "62 Bd Jean Ingres 44300 St Herblain"]
Laurence Bobet = [first_name: "Laurence", last_name: "Bobet", job: "Hypnose", phone_number: "07.49.31.25.49", email: "laurence.bobet@gmail.com", address: "62 Bd Jean Ingres 44300 St Herblain"]
Claire Pelletier = [first_name: "Claire", last_name: "Pelletier", job: "Hypnose", phone_number: "", email: "", address: "62 Bd Jean Ingres 44300 St Herblain"]
Gilles Chehade = [first_name: "Gilles", last_name: "Chehade", job: "Hypnose", phone_number: " 07.66.39.73.94", email: "gilles@hypno.cat", address: "62 Bd Jean Ingres 44300 St Herblain"]

Georges ABOU KHALIL = [first_name: "Georges", last_name: "ABOU KHALIL", job: "Osthéopathie", phone_number: "02.40.73.40.99", email: "", address: "6, rue de la Fauvette 44100 NANTES"]
Aude Aude = [first_name: "Aude", last_name: "BASSET", job: "Osthéopathie", phone_number: "06.61.25.23.63", email: "basset.aude@gmail.com", address: "13, rue Jean XXIII 44470 CARQUEFOU"]
Justine BONFILLON = [first_name: "Justine ", last_name: "BONFILLON", job: "Osthéopathie", phone_number: "Osthéopathie", email: "", address: "30 ter, rue Martin Luther King 44240 LA CHAPELLE SUR ERDRE "]
Daniel CHOPINEAUX= [first_name: "Daniel", last_name: "CHOPINEAUX", job: "Osthéopathie", phone_number: "07.85.20.18.54", email: "d.chopineaux@gmail.com", address: "2 bis, rue d'Herbauges 44310 SAINT LUMINE DE COUTAIS "]
François DE BOISJOLLY= [first_name: "François ", last_name: "DE BOISJOLLY", job: "Osthéopathie", phone_number: "02.40.48.72.00", email: "frdeboisjolly@wanadoo.fr", address: "Cabinet d'Ostéopathie Monselet 12, rue de Carcouët"]

Gwénaëlle De Buor= [first_name: "Gwénaëlle", last_name: "De Buor", job: "Chiropracteur", phone_number: "06.23.92.73.23", email: "", address: " 47 rue Littré 44100 Nantes"]
Guillaume Martin= [first_name: "Guillaume", last_name: "Martin", job: "Chiropracteur", phone_number: "09.67.01.02.52", email: "", address: "7 boulevard des sports Vertou (44120)"]
Linda Moie Meurou = [first_name: "Linda", last_name: "Moie Meurou", job: "Chiropracteur", phone_number: "02 40 45 34 76", email: "", address: "8, rue du milan noir Z.A. Brehadour Guérande (44350)"]
Claire Morosini = [first_name: "Claire", last_name: "Morosini", job: "Chiropracteur", phone_number: "06.17.38.42.04", email: "morosini.chiro@gmail.com", address: "7 rue de la Jaunais Montoir-de-Bretagne (44550)"]
Manon CHAIGNEAU = [first_name: "Manon ", last_name: "CHAIGNEAU", job: "Chiropracteur", phone_number: "07 87 74 30 00", email: "mchaigneau.chiropraxie@gmail.com", address: " 3 avenue Gustave Lusseaud Saint-Brevin-les-Pins (44250)"]

Laetitia Machard = [first_name: "Laetitia", last_name: "Machard", job: "Naturopathie", phone_number: "06.29.59.88.27", email: "http://laetitiamachard.site-solocal.com", address: "1 rue Bons Français 44000 Nantes "]
Bénédicte GIE = [first_name: "Bénédicte", last_name: "GIE", job: "Naturopathie", phone_number: "06.17.98.26.06", email: "", address: " Cabinet Saint Jacques 13 boulevard Joliot Curie 44200 Nantes"]
Eric Blasin = [first_name: "Eric", last_name: "Blasin", job: "Naturopathie", phone_number: "02.40.76.74.64", email: "http://www.naturopathe-iridologue.com", address: " 99 boulevard Anglais 44100 Nantes"]
Juillard Nathalie = [first_name: "Juillard", last_name: "Nathalie", job: "Naturopathie", phone_number: "06.85.57.21.66", email: "http://www.nathaliejuillard.com", address: "49 rue Gourmette 44300 Nantes"]
Aurélie Pereira = [first_name: "Aurélie", last_name: "Pereira", job: "Naturopathie", phone_number: "06.79.28.55.07", email: "http://www.lalyreikienergies.com", address: "rue Pays de la Loire 44300 Nantes"]

Jordane Saunal = [first_name: "Jordane", last_name: "Saunal", job: "Sonothérapie", phone_number: "06.85.85.44.64", email: "http://jordanesaunal-sonotherapie.com", address: "52 avenue Parc de Procé 44100 Nantes"]
Marielle PICART = [first_name: "Marielle", last_name: "PICART", job: "Sonothérapie", phone_number: "06.82.51.56.58", email: "http://mariellepicart-kinesiologie.com/", address: "24 rue Noire 44000 Nantes"]
Bénédicte GIE= [first_name: "Bénédicte", last_name: "GIE", job: "Sonothérapie", phone_number: "06.17.98.26.06", email: "https://www.medoucine.com/consultation/nantes/benedicte-gie/2977?utm_source=bouton-rdv&utm_medium=pack-com&utm_campaign=benedicte-gie", address: " Cabinet Saint Jacques 13 boulevard Joliot Curie 44200 Nantes"]
Guyochet Guylène Guais = [first_name: "Guyochet", last_name: "Guylène Guais", job: "Sonothérapie", phone_number: "07.68.29.79.74", email: "http://guyleneguaisguyochet.com/", address: "18 rue Vienne 44000 Nantes"]
Ericka Robine= [first_name: "Ericka", last_name: "Robine", job: "Sonothérapie", phone_number: "06.43.05.57.68", email: "sonotherapeute.wixsite.com", address: "62 Bd Jean Ingres 44300 St Herblain"]

# = [first_name: "", last_name: "", job: "", phone_number: "", email: "", address: ""]
# = [first_name: "", last_name: "", job: "", phone_number: "", email: "", address: ""]
# = [first_name: "", last_name: "", job: "", phone_number: "", email: "", address: ""]
# = [first_name: "", last_name: "", job: "", phone_number: "", email: "", address: ""]
# = [first_name: "", last_name: "", job: "", phone_number: "", email: "", address: ""]
# = [first_name: "", last_name: "", job: "", phone_number: "", email: "", address: ""]
# = [first_name: "", last_name: "", job: "", phone_number: "", email: "", address: ""]
# = [first_name: "", last_name: "", job: "", phone_number: "", email: "", address: ""]
# = [first_name: "", last_name: "", job: "", phone_number: "", email: "", address: ""]
# = [first_name: "", last_name: "", job: "", phone_number: "", email: "", address: ""]
# = [first_name: "", last_name: "", job: "", phone_number: "", email: "", address: ""]
# = [first_name: "", last_name: "", job: "", phone_number: "", email: "", address: ""]
# = [first_name: "", last_name: "", job: "", phone_number: "", email: "", address: ""]
# = [first_name: "", last_name: "", job: "", phone_number: "", email: "", address: ""]
# = [first_name: "", last_name: "", job: "", phone_number: "", email: "", address: ""]
# = [first_name: "", last_name: "", job: "", phone_number: "", email: "", address: ""]
# = [first_name: "", last_name: "", job: "", phone_number: "", email: "", address: ""]
# = [first_name: "", last_name: "", job: "", phone_number: "", email: "", address: ""]
# = [first_name: "", last_name: "", job: "", phone_number: "", email: "", address: ""]
# = [first_name: "", last_name: "", job: "", phone_number: "", email: "", address: ""]
# = [first_name: "", last_name: "", job: "", phone_number: "", email: "", address: ""]
# = [first_name: "", last_name: "", job: "", phone_number: "", email: "", address: ""]
# = [first_name: "", last_name: "", job: "", phone_number: "", email: "", address: ""]
# = [first_name: "", last_name: "", job: "", phone_number: "", email: "", address: ""]
# = [first_name: "", last_name: "", job: "", phone_number: "", email: "", address: ""]
# = [first_name: "", last_name: "", job: "", phone_number: "", email: "", address: ""]
# = [first_name: "", last_name: "", job: "", phone_number: "", email: "", address: ""]
# Virginie Azeau = [first_name: "Virginie", last_name: "Azeau", job: "Soin énergétique", specialty: "", phone_number: "", email: "", address: ""]
#  = [first_name: "", last_name: "", job: "", specialty: "", phone_number: "", email: "", address: ""]

puts "creating pratician done"
