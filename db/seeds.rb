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

p0 = Pratician.create!(first_name: "Yann", last_name: "Lecocq", job: "Hypnose", phone_number: "06.09.82.16.04", email: "yannlecocqhypnose44@gmail.com", address: "62 Bd Jean Ingres 44300 St Herblain", symptom: s0, description: "Je m'appelle Yann et je suis spécialisé sur la gestion des émotions. On apprend à se faire confiance. Je vous aide à définir votre objectif et on le valide ensemble. Notre séance d’Hypnose est un voyage entre votre conscient et votre inconscient dans lequel vous êtes le seul au commande de vos pensées. Par le biais de suggestions verbales et visuelles très générales pour vivre votre propre expérience.")

p1 = Pratician.create!(first_name: "Edith", last_name: "Wernert", job: "Hypnose", phone_number: "07.64.48.22.11", email: "edith.werner@gmail.com", address: "62 Bd Jean Ingres 44300 St Herblain", symptom: s1, description: "En 2008, passionnée par ce métier, je me suis installée en tant que thérapeute en cabinet. Par la suite, je me suis spécialisée dans l’ARRÊT DU TABAC et l’AMINCISSEMENT. J'anime des formations dans le domaine des THERAPIES ENERGETIQUES (Reiki, Lahotchi…) et d’HYPNOSE (Auto-hypnose, EFT, TIPI, Cohérence Cardiaque, Fleurs de Bach etc…).")

p2 = Pratician.create!(first_name: "Laurence", last_name: "Bobet", job: "Hypnose", phone_number: "07.49.31.25.49", email: "laurence.bobet@gmail.com", address: "62 Bd Jean Ingres 44300 St Herblain", symptom: s2, description: "J'exerce depuis 2 ans avec l'Hypnose Sajece. Sous forme d'histoires métahporiques et de sugestions à votre inconscient qui élabore une nouvelle stratégie de changement")

p3 = Pratician.create!(first_name: "Claire", last_name: "Pelletier", job: "Hypnose", phone_number: "06.85.62.14.42", email: "claire.pelletier@gmail.com", address: "62 Bd Jean Ingres 44300 St Herblain", symptom: s3, description: "Je m’appelle Claire, J’accompagne maintenant les enfants de façon individuelle dans leurs apprentissages. Formée en psychopédagogie (la Fabrique à Bonheur) et consultante en intégration des réflexes archaïques (méthode RMTi®), je comprends aussi les besoins des enfants à haut potentiel et hyper sensibles.")

p4 = Pratician.create!(first_name: "Gilles", last_name: "Chehade", job: "Hypnose", phone_number: " 07.66.39.73.94", email: "gilles@hypno.cat", address: "62 Bd Jean Ingres 44300 St Herblain", symptom: s4, description: "J’ai découvert l’hypnose en 2015 avec beaucoup de curiosité et de scepticisme pour une pratique qui me semblait peu rationnelle. J’ai entrepris de me former pour mieux la comprendre et suis devenu praticien l’année suivante, convaincu que cette pratique était non seulement bien rationnelle mais devait surtout faire partie intégrante de ma vie.")

p5 = Pratician.create!(first_name: "Georges", last_name: "ABOU KHALIL", job: "Ostéopathie", phone_number: "02.40.73.40.99", email: "aboukhalil@hotmail.fr", address: "6, rue de la Fauvette 44100 NANTES", symptom: s5, description: "En activité depuis 2021 je suis spécialisé dans les blessures sportives et la réducation musculeto squeletique.")

p6 = Pratician.create!(first_name: "Aude", last_name: "BASSET", job: "Ostéopathie", phone_number: "06.61.25.23.63", email: "basset.aude@gmail.com", address: "13, rue Jean XXIII 44470 CARQUEFOU", symptom: s6, description: "L'ostéopathe réalise des manipulations non violentes afin de rétablir la mobilité des articulations, des muscles, des organes internes et des os. Il permet notamment de soulager les maux de dos, les entorses, mais aussi le stress, les règles douloureuses ou encore les migraines.")

p7 = Pratician.create!(first_name: "Justine ", last_name: "BONFILLON", job: "Ostéopathie", phone_number: "07.85.20.18.54", email: "justinebasset@gmail.com", address: "30 ter, rue Martin Luther King 44240 LA CHAPELLE SUR ERDRE ", symptom: s7, description: "L'ostéopathie est basée sur le principe que la santé et le bien-être d'une personne dépendent de la cohérence de ses os, de ses muscles, de ses organes, de ses ligaments et de son tissu conjonctif afin de maintenir un équilibre dans le corps. Par des manipulations, un ostéopathe peut redonner une capacité de mouvement à toutes les structures du corps. L’ostéopathe va examiner un patient d’un point de vue holistique. Ainsi, il ne traite pas un symptôme ou une maladie mais une personne à part entière. ")

p8 = Pratician.create!(first_name: "Daniel", last_name: "CHOPINEAUX", job: "Ostéopathie", phone_number: "07.85.20.18.54", email: "d.chopineaux@gmail.com", address: "2 bis, rue d'Herbauges 44310 SAINT LUMINE DE COUTAIS ", symptom: s8, description: "Je vous accueille également aujourd'hui à Saint-Lumine-de-Coutais, ayant intégré un Espace Santé dynamique sur ma commune de vie.J'interviens par ailleurs depuis 2003 à l'école d'ostéopathie de Nantes, IdHEO, en tant que formateur et encadrant clinique, en particulier dans l'approche neuro-végétative, crânienne et pédiatrique.")

p9 = Pratician.create!(first_name: "François ", last_name: "DE BOISJOLLY", job: "Ostéopathie", phone_number: "02.40.48.72.00", email: "frdeboisjolly@wanadoo.fr", address: "Cabinet d'Ostéopathie Monselet 12, rue de Carcouët", symptom: s9, description: "Le cabinet d'Ostéopathie Monselet assure les prises en charge des bébés, adolescents, adultes, personnes âgées, handicapés, sportifs, femmes enceintes...La prise de rendez-vous peut se faire sur DOCTOLIB.fr.Prendre rendez-vous en ligne")

p10 = Pratician.create!(first_name: "Gwénaëlle", last_name: "De Buor", job: "Chiropratique", phone_number: "06.23.92.73.23", email: "gwenaelledebuor@yahoo.fr", address: " 47 rue Littré 44100 Nantes", symptom: s10, description: "Gwénaëlle de Buor est Chiropratique Diplômé,Son cabinet accueille les adultes, les femmes enceintes, les nourrissons, les enfants, les sportifs, les personnes âgées...Les motifs de consultation sont divers :mal de dos, sciatiques, cruralgie, migraines, maux de tête")

p11 = Pratician.create!(first_name: "Guillaume", last_name: "Martin", job: "Chiropratique", phone_number: "09.67.01.02.52", email: "Martinguillaume@yahoo.com", address: "7 boulevard des sports Vertou (44120)", symptom: s0, description: "Présentation.La chiropraxie est une thérapie manuelle pour les soins du dos et des articulations. Elle a pour objet la détection, le traitement et la prévention des dysfonctionnements du squelette et de ses conséquences, notamment au niveau de l'appareil locomoteur. Ces dysfonctions se traduisent notamment par des douleurs ou une limitation du mouvement.")

p12 = Pratician.create!(first_name: "Linda", last_name: "Moie Meurou", job: "Chiropratique", phone_number: "02 40 45 34 76", email: "lindamoie@gmail.com", address: "8, rue du milan noir Z.A. Brehadour Guérande (44350)", symptom: s1, description: "Elle reçoit enfants, nourrissons, musiciens, personnes sédentaires, sportifs, personnes actives.La chiropraxie, également appelée méthode chiropratique ou pratique chiropratique, est une méthode de référence pour traiter les problèmes de dos ou d'articulations.")

p13 = Pratician.create!(first_name: "Claire", last_name: "Morosini", job: "Chiropratique", phone_number: "06.17.38.42.04", email: "morosini.chiro@gmail.com", address: "7 rue de la Jaunais Montoir-de-Bretagne (44550)", symptom: s2, description: "J’ai choisi d’étudier la chiropraxie car j’aime la façon de voir le corps humain dans sa globalité. La chiropraxie me permet de rechercher la cause du problème. Tous les jours sont différents car tous les êtres humains sont différents, et il faut savoir s’adapter. J’ai toujours été attirée par le fait d’aider les gens et cette profession me le permet.")

p14 = Pratician.create!(first_name: "Manon ", last_name: "CHAIGNEAU", job: "Chiropratique", phone_number: "07 87 74 30 00", email: "mchaigneau.chiropraxie@gmail.com", address: " 3 avenue Gustave Lusseaud Saint-Brevin-les-Pins (44250)", symptom: s3, description: "Mon envie de prendre soin des autres et de connaître l’étendue des capacités du corps humain m’ont poussé à faire des études de chiropraxie. Etre intégrée dans le parcours de soin d’une personne pour améliorer sa qualité de vie.")

p15 = Pratician.create!(first_name: "Laetitia", last_name: "Machard", job: "Naturopathie", phone_number: "06.29.59.88.27", email: "http://laetitiamachard.site-solocal.com", address: "1 rue Bons Français 44000 Nantes ", symptom: s4, description: "En une ou deux séances, apprenez à mieux vous connaître et gagnez en vitalité et en joie de vivre grâce à la naturopathie.Quelque soit votre demande, je prendrai le temps d'y répondre avec le plus grand soin.")

p16 = Pratician.create!(first_name: "Bénédicte", last_name: "GIE", job: "Naturopathie", phone_number: "06.17.98.26.06", email: "benedictegie@yahoo.fr", address: " Cabinet Saint Jacques 13 boulevard Joliot Curie 44200 Nantes", symptom: s4, description: "Une consultation c'est une capacité d'écoute, des échanges constructifs, une évaluation globale et individualisée de votre santé. Je vous conseille sur les bonnes pratiques   (alimentation, nutrition, chronobiologie, techniques de relaxation...)")

p17 = Pratician.create!(first_name: "Eric", last_name: "Blasin", job: "Naturopathie", phone_number: "02.40.76.74.64", email: "http://www.naturopathe-iridologue.com", address: " 99 boulevard Anglais 44100 Nantes", symptom: s5, description: "Eric Blasin, naturopathe Nantes, iridologue et auriculothérapeute propose un autre regard sur la santé et le bien être dans le quartier Procès à Nantes.Ces différentes techniques vous sont proposées : Naturopathie, iridologie, auriculothérapie, thérapie quantique, Miltaled, Physioscan, conseil en diététique et hygiène de vie, oligo-éléments, fleurs de Bach, huiles essentielles, micronutrition et phytothérapie.")

p18 = Pratician.create!(first_name: "Nathalie", last_name: "Juillard", job: "Naturopathie", phone_number: "06.85.57.21.66", email: "http://www.nathaliejuillard.com", address: "49 rue Gourmette 44300 Nantes", symptom: s6, description: "Depuis toujours j’ai une sensibilité à la médecine naturelle et à la spiritualité.Plutôt, j’ai débuté dans la vie active en travaillant en entreprises dans le secteur du commerce, j’aime le contact avec l’humain et il me manquait quelque chose qui est plus de sens pour moi. Il me manquait plus de profondeur et d’un véritable intérêt à œuvrer, moi qui suis toujours en quête de sens.")

p19 = Pratician.create!(first_name: "Aurélie", last_name: "Pereira", job: "Naturopathie", phone_number: "06.79.28.55.07", email: "http://www.lalyreikienergies.com", address: "rue Pays de la Loire 44300 Nantes", symptom: s7, description: "Maître Enseignante et Praticienne Reiki Usui, Prêtresse d’Isis, formatrice, naturopathe certifiée et magnétiseuse depuis toujours, je suis une louve, une guerrière de lumière, une (bonne) sorcière, je t’accompagne, t’aide, t’écoute, te transmets mon savoir et mes énergies…")

p20 = Pratician.create!(first_name: "Jordane", last_name: "Saunal", job: "Sonothérapie", phone_number: "06.85.85.44.64", email: "http://jordanesaunal-sonotherapie.com", address: "52 avenue Parc de Procé 44100 Nantes", symptom: s8, description: "Dans mon approche de la sonothérapie je donne une grande place à l’écoute de mon intuition, aux ressentis énergétiques qui me servent de guides. J’utilise, lors des séances, des instruments qui me sont chers tels que les bols tibétains, bols chantants, gong, carillons")

p21 = Pratician.create!(first_name: "Marielle", last_name: "PICART", job: "Sonothérapie", phone_number: "06.82.51.56.58", email: "http://mariellepicart-kinesiologie.com/", address: "24 rue Noire 44000 Nantes", symptom: s9, description: "Et s’il était possible d’établir un dialogue avec le corps pour identifier les sources inconscientes de nos déséquilibres. C'est une pratique de communication subtile et directe avec le corps, lui permettant d’initier des changements pour un mieux-être intérieur.")

p22 = Pratician.create!(first_name: "Manuel", last_name: "Mahe", job: "Sonothérapie", phone_number: "06.17.98.26.06", email: "https://www.medoucine.com/consultation/nantes/benedicte-gie/2977?utm_source=bouton-rdv&utm_medium=pack-com&utm_campaign=benedicte-gie", address: " Cabinet Saint Jacques 13 boulevard Joliot Curie 44200 Nantes", symptom: s10, description: "Convaincu par notre pouvoir d’auto-guérison, je propose des relaxations sonores, des méditations guidées par les sons, des voyages dans l’inconscient avec le Yoga Nidra, des soins sonores et énergétiques pour ouvrir chez chacun un espace de créativité et de guérison en reliance avec ses forces et de son guide Intérieur.")

p23 = Pratician.create!(first_name: "Guyochet", last_name: "Guylène Guais", job: "Sonothérapie", phone_number: "07.68.29.79.74", email: "http://guyleneguaisguyochet.com/", address: "18 rue Vienne 44000 Nantes", symptom: s0, description: "Un mixte des différentes techniques sonores. La relation humaine est au coeur de mes préoccupations.J’ai travaillé pendant plus de 30 ans dans le domaine de la communication")

p24 = Pratician.create!(first_name: "Ericka", last_name: "Robine", job: "Sonothérapie", phone_number: "06.43.05.57.68", email: "sonotherapeute.wixsite.com", address: "62 Bd Jean Ingres 44300 St Herblain", symptom: s1, description: "La sonothérapie est une thérapie holistique qui utilise le son et les vibrations pour entrer en connexion avec votre corps.")


puts "creating pratician done"

# active storage seeds images

puts "creating photos for users"
file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1669740521/adolphe_wvny3s.jpg")
user00.photo.attach(io: file, filename: "adolphe.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1669740528/Patrice_kv2g0f.jpg")
user01.photo.attach(io: file, filename: "Patrice.png", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1669740525/erkan-kirdar-sTAlYP5P1rQ-unsplash_pd5kmz.jpg")
user02.photo.attach(io: file, filename: "Jules.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1670336206/vieux_hxfqof.jpg")
user03.photo.attach(io: file, filename: "Jean.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dtxv6vrd3/image/upload/v1670317099/37_htrvdn.jpg")
user04.photo.attach(io: file, filename: "Sadi.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dtxv6vrd3/image/upload/v1670317522/75_emioax.jpg")
user05.photo.attach(io: file, filename: "Félix.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dtxv6vrd3/image/upload/v1670317522/23_z1jd17.jpg")
user06.photo.attach(io: file, filename: "Émile.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dtxv6vrd3/image/upload/v1670317522/16_zfoh80.jpg")
user07.photo.attach(io: file, filename: "Armand.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dtxv6vrd3/image/upload/v1670317522/39_n81thd.jpg")
user08.photo.attach(io: file, filename: "Raymond.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dtxv6vrd3/image/upload/v1670317972/73_h0ili1.jpg")
user09.photo.attach(io: file, filename: "Paul.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dtxv6vrd3/image/upload/v1670317972/48_ykt6es.jpg")
user10.photo.attach(io: file, filename: "Alexandre.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dtxv6vrd3/image/upload/v1670317972/71_khsjl3.jpg")
user11.photo.attach(io: file, filename: "Gaston.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dtxv6vrd3/image/upload/v1670317972/46_djsisl.jpg")
user12.photo.attach(io: file, filename: "Paul.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/dtxv6vrd3/image/upload/v1670317972/34_d3amlx.jpg")
user13.photo.attach(io: file, filename: "Albert.jpg", content_type: "image/jpg")

puts "created photos for users"

puts "creating photos for praticians"


file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1669818145/Yann_.L_ua6a9z.jpg")
p0.photo.attach(io: file, filename: "Yann.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1669818165/edith.Werner_hopt9i.jpg")
p1.photo.attach(io: file, filename: "Edith Werner.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1669818165/Laurence_bobet_aspvqt.jpg")
p2.photo.attach(io: file, filename: "bob.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1669818164/Claire_Pelletier_pyfffo.jpg")
p3.photo.attach(io: file, filename: "Claire.png", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1670231379/Gille_de_la_Chehade_puy6a1.jpg")
p4.photo.attach(io: file, filename: "Gilles de la Chehade.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1670231784/Goerges_Abou_Khalil_er5s0w.jpg")
p5.photo.attach(io: file, filename: "Goerges Abou.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1670231932/Aude_Basset_epdrwi.jpg")
p6.photo.attach(io: file, filename: "AudeBasset.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1670232167/Justine_Bonfillon_zwru1m.jpg")
p7.photo.attach(io: file, filename: "JustineBonfillon.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1670232340/Daniel_Chopnieaux_gud7td.jpg")
p8.photo.attach(io: file, filename: "DanielChopineaux.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1670232446/Fran%C3%A7oisdeBoisJolly_ztxpa2.jpg")
p9.photo.attach(io: file, filename: "FrançoisBoisJolly.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1670232691/GwenaelledeBuor_qjllli.jpg")
p10.photo.attach(io: file, filename: "GwenaelleDeBuor.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1670232851/GuillaumeMartin_vjo3bd.jpg")
p11.photo.attach(io: file, filename: "GuillaumeMartin.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1670233032/LindaMoie_xysnni.jpg")
p12.photo.attach(io: file, filename: "LindaMoie.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1670233193/CliareMorosini_m5v786.jpg")
p13.photo.attach(io: file, filename: "ClaireMorosini.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1670233291/ManonChaignaux_akblwx.jpg")
p14.photo.attach(io: file, filename: "ManonChaignaux.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1670233464/LaetitiaMachard_xy3fog.jpg")
p15.photo.attach(io: file, filename: "LaetitiaMachard.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1670233560/BenedicteGie_ufsq02.jpg")
p16.photo.attach(io: file, filename: "BenedicteGie.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1670233645/EricBlasin_wnnnci.jpg")
p17.photo.attach(io: file, filename: "EricBlasin.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1670233777/NAthalieJuillard_ntpcyh.jpg")
p18.photo.attach(io: file, filename: "NAthalieJuillard.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1670233896/Aur%C3%A9lie_Pereira_darq6n.jpg")
p19.photo.attach(io: file, filename: "A9lie_Pereira.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1670233987/JordaneSaunal_v0eoza.jpg")
p20.photo.attach(io: file, filename: "JordaneSaunal.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1670234090/Marielle_Picart_noehi7.jpg")
p21.photo.attach(io: file, filename: "Marielle_Picart.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1670234276/ManuelMahe_zbc7z0.jpg")
p22.photo.attach(io: file, filename: "ManuelMahe.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1670234365/Guyochet_jar66f.jpg")
p23.photo.attach(io: file, filename: "Guylène Guais.jpg", content_type: "image/jpg")

file = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1670234493/Ericka_Robine_gconr1.jpg")
p24.photo.attach(io: file, filename: "Ericka_Robine.jpg", content_type: "image/jpg")

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
