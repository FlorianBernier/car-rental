#Refresh db
Booking.destroy_all
Car.destroy_all
User.destroy_all


# Création de quelques utilisateurs
admin = User.create(email: 'admin@gmail.com', password: '123456')
user1 = User.create(email: 'user1@gmail.com', password: '123456')
user2 = User.create(email: 'user2@gmail.com', password: '123456')

# Création de quelques voitures pour chaque utilisateur
Car.create!(user: User.all.sample, brand: 'Seat', model: 'Ibiza', year_of_production: Date.new(2020), address: 'Rennes', price_per_day: 50.0, comment:"Voiture de sport de collection. De l'année 2005, réparation : porte avant gauche ...")
Car.create!(user: User.all.sample, brand: 'Seat', model: 'Ibiza', year_of_production: Date.new(2020), address: 'Rennes', price_per_day: 50.0, comment:"Voiture de sport de collection. De l'année 2005, réparation : porte avant gauche ...")
Car.create!(user: User.all.sample, brand: 'Renault', model: 'Clio', year_of_production: Date.new(2018), address: 'Rennes', price_per_day: 55.0, comment: "Parfait pour les déplacements en ville. Très économique en carburant.")
Car.create!(user: User.all.sample, brand: 'Peugeot', model: '208', year_of_production: Date.new(2019), address: 'Rennes', price_per_day: 60.0, comment: "Confortable et idéale pour les longs trajets en famille.")
Car.create!(user: User.all.sample, brand: 'Volkswagen', model: 'Golf', year_of_production: Date.new(2017), address: 'Rennes', price_per_day: 65.0, comment: "Compacte et puissante, idéale pour les amateurs de conduite sportive.")
Car.create!(user: User.all.sample, brand: 'Ford', model: 'Fiesta', year_of_production: Date.new(2016), address: 'Rennes', price_per_day: 55.0, comment: "Petite voiture urbaine très maniable. Parfaite pour se faufiler dans la circulation.")
Car.create!(user: User.all.sample, brand: 'Audi', model: 'A3', year_of_production: Date.new(2019), address: 'Rennes', price_per_day: 70.0, comment: "Luxueuse et confortable, elle offre une expérience de conduite incomparable.")
Car.create!(user: User.all.sample, brand: 'BMW', model: '3 Series', year_of_production: Date.new(2018), address: 'Rennes', price_per_day: 75.0, comment: "Une berline élégante et performante, parfaite pour les voyages d'affaires.")
Car.create!(user: User.all.sample, brand: 'Mercedes', model: 'A-Class', year_of_production: Date.new(2020), address: 'Rennes', price_per_day: 80.0, comment: "Technologie de pointe et design raffiné, une voiture qui se démarque.")
Car.create!(user: User.all.sample, brand: 'Toyota', model: 'Yaris', year_of_production: Date.new(2017), address: 'Rennes', price_per_day: 60.0, comment: "Fiable et économique, elle est idéale pour les petits budgets.")
Car.create!(user: User.all.sample, brand: 'Nissan', model: 'Micra', year_of_production: Date.new(2016), address: 'Rennes', price_per_day: 55.0, comment: "Petite citadine pratique et facile à conduire, parfaite pour les débutants.")
Car.create!(user: User.all.sample, brand: 'Hyundai', model: 'i20', year_of_production: Date.new(2018), address: 'Rennes', price_per_day: 60.0, comment: "Polyvalente et confortable, elle convient à tous les types de trajets.")
Car.create!(user: User.all.sample, brand: 'Kia', model: 'Rio', year_of_production: Date.new(2017), address: 'Rennes', price_per_day: 55.0, comment: "Design moderne et équipements complets, une voiture agréable à conduire.")
Car.create!(user: User.all.sample, brand: 'Skoda', model: 'Fabia', year_of_production: Date.new(2019), address: 'Rennes', price_per_day: 60.0, comment: "Spacieuse et bien équipée, elle offre un excellent rapport qualité-prix.")
Car.create!(user: User.all.sample, brand: 'Citroen', model: 'C3', year_of_production: Date.new(2018), address: 'Nantes', price_per_day: 55.0, comment: "Originale et colorée, elle se distingue par son style unique.")
Car.create!(user: User.all.sample, brand: 'Fiat', model: '500', year_of_production: Date.new(2017), address: 'Nantes', price_per_day: 50.0, comment: "Petite et maniable, elle est parfaite pour circuler en ville.")
Car.create!(user: User.all.sample, brand: 'Opel', model: 'Corsa', year_of_production: Date.new(2016), address: 'Nantes Havre', price_per_day: 55.0, comment: "Compacte et économique, elle convient parfaitement aux petits trajets.")
Car.create!(user: User.all.sample, brand: 'Dacia', model: 'Sandero', year_of_production: Date.new(2018), address: 'Nantes', price_per_day: 50.0, comment: "Robuste et fiable, elle offre un excellent rapport qualité-prix.")
Car.create!(user: User.all.sample, brand: 'Suzuki', model: 'Swift', year_of_production: Date.new(2017), address: 'Nantes', price_per_day: 55.0, comment: "Compacte et dynamique, elle offre une conduite agréable et réactive.")
Car.create!(user: User.all.sample, brand: 'Mini', model: 'Cooper', year_of_production: Date.new(2018), address: 'Nantes', price_per_day: 60.0, comment: "Iconique et stylée, elle séduit par son design rétro et sa personnalité unique.")
Car.create!(user: User.all.sample, brand: 'Alfa Romeo', model: 'Giulietta', year_of_production: Date.new(2019), address: 'Nantes', price_per_day: 65.0, comment: "Sportive et élégante, elle offre des performances exceptionnelles.")
Car.create!(user: User.all.sample, brand: 'Lancia', model: 'Ypsilon', year_of_production: Date.new(2016), address: 'Nantes', price_per_day: 55.0, comment: "Chic et raffinée, elle se distingue par son design original et son confort.")
Car.create!(user: User.all.sample, brand: 'Mazda', model: '2', year_of_production: Date.new(2017), address: 'Nantes', price_per_day: 60.0, comment: "Compacte et bien équipée, elle offre un excellent compromis entre confort et performance.")
Car.create!(user: User.all.sample, brand: 'Volvo', model: 'V40', year_of_production: Date.new(2018), address: 'Nantes', price_per_day: 65.0, comment: "Sécuritaire et confortable, elle est idéale pour les longs trajets en famille.")
Car.create!(user: User.all.sample, brand: 'Jaguar', model: 'XE', year_of_production: Date.new(2019), address: 'Nantes', price_per_day: 70.0, comment: "Élégante et performante, elle offre une expérience de conduite haut de gamme.")
Car.create!(user: User.all.sample, brand: 'Land Rover', model: 'Discovery', year_of_production: Date.new(2020), address: 'Paris', price_per_day: 80.0, comment: "Robuste et tout-terrain, elle est parfaite pour les aventures en pleine nature.")
Car.create!(user: User.all.sample, brand: 'Jeep', model: 'Renegade', year_of_production: Date.new(2018), address: 'Paris', price_per_day: 75.0, comment: "Baroudeuse et polyvalente, elle est prête à affronter tous les terrains.")
Car.create!(user: User.all.sample, brand: 'Porsche', model: '911', year_of_production: Date.new(2019), address: 'Paris', price_per_day: 100.0, comment: "Légendaire et sportive, elle offre des performances exceptionnelles.")
Car.create!(user: User.all.sample, brand: 'Ferrari', model: '488', year_of_production: Date.new(2020), address: 'Paris', price_per_day: 150.0, comment: "Voiture de sport de luxe, elle offre des sensations uniques et un design exceptionnel.")
Car.create!(user: User.all.sample, brand: 'Lamborghini', model: 'Huracan', year_of_production: Date.new(2020), address: 'Paris', price_per_day: 200.0, comment: "Supercar de prestige, elle offre des performances incroyables et un design futuriste.")
Car.create!(user: User.all.sample, brand: 'Bugatti', model: 'Chiron', year_of_production: Date.new(2020), address: 'Paris', price_per_day: 250.0, comment: "Hypercar d'exception, elle est l'une des voitures les plus rapides et les plus chères au monde.")
Car.create!(user: User.all.sample, brand: 'McLaren', model: '720S', year_of_production: Date.new(2020), address: 'Paris', price_per_day: 180.0, comment: "Supercar de course, elle offre des performances de pointe et un design aérodynamique.")
Car.create!(user: User.all.sample, brand: 'Lotus', model: 'Elise', year_of_production: Date.new(2020), address: 'Paris', price_per_day: 100.0, comment: "Voiture de sport légère et agile, elle offre des sensations de conduite uniques.")
Car.create!(user: User.all.sample, brand: 'Aston Martin', model: 'Vantage', year_of_production: Date.new(2020), address: 'Paris', price_per_day: 150.0, comment: "Voiture de luxe et de sport, elle allie élégance et performances exceptionnelles.")
Car.create!(user: User.all.sample, brand: 'Bentley', model: 'Continental GT', year_of_production: Date.new(2020), address: 'Paris', price_per_day: 200.0, comment: "Grand tourisme de prestige, elle offre un confort et un raffinement incomparables.")
Car.create!(user: User.all.sample, brand: 'Rolls-Royce', model: 'Phantom', year_of_production: Date.new(2020), address: 'Paris', price_per_day: 250.0, comment: "Limousine de luxe, elle incarne l'élégance et le prestige à l'état pur.")
Car.create!(user: User.all.sample, brand: 'Maserati', model: 'Ghibli', year_of_production: Date.new(2020), address: 'Paris', price_per_day: 180.0, comment: "Berline de luxe et de sport, elle offre des performances exceptionnelles et un design raffiné.")
Car.create!(user: User.all.sample, brand: 'Alpine', model: 'A110', year_of_production: Date.new(2020), address: 'Paris', price_per_day: 150.0, comment: "Voiture de sport légère et agile, elle offre des sensations de conduite uniques.")
Car.create!(user: User.all.sample, brand: 'Alpine', model: 'A110', year_of_production: Date.new(2020), address: 'Les Iffs', price_per_day: 150.0, comment: "Voiture de sport légère et agile, elle offre des sensations de conduite uniques.")

puts "seeded #{User.count} users"
puts "seeded #{Car.count} cars"
