#Refresh db
Booking.destroy_all
Car.destroy_all
User.destroy_all


# Création de quelques utilisateurs
admin = User.create(email: 'admin@gmail.com', password: '123456')
user1 = User.create(email: 'user1@gmail.com', password: '123456')
user2 = User.create(email: 'user2@gmail.com', password: '123456')

# Création de quelques voitures pour chaque utilisateur
Car.create!(user: User.all.sample, brand: 'Seat', model: 'Ibiza', year_of_production: Date.new(2020), address: '123 Main St', price_per_day: 50.0, comment:"Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptas in fuga eius, quae esse enim aliquam necessitatibus aliquid totam aperiam illum rem eaque nostrum, eos eveniet voluptates! Quas, deserunt eveniet?")
Car.create!(user: User.all.sample, brand: 'Honda', model: 'Civic', year_of_production: Date.new(2018), address: '456 Elm St', price_per_day: 60.0, comment:"Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptas in fuga eius, quae esse enim aliquam necessitatibus aliquid totam aperiam illum rem eaque nostrum, eos eveniet voluptates! Quas, deserunt eveniet?")

Car.create!(user: User.all.sample, brand: 'Ford', model: 'Focus', year_of_production: Date.new(2019), address: '789 Oak St', price_per_day: 55.0, comment:"Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptas in fuga eius, quae esse enim aliquam necessitatibus aliquid totam aperiam illum rem eaque nostrum, eos eveniet voluptates! Quas, deserunt eveniet?")
Car.create!(user: User.all.sample, brand: 'Chevrolet', model: 'Malibu', year_of_production: Date.new(2017), address: '101 Pine St', price_per_day: 65.0, comment:"Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptas in fuga eius, quae esse enim aliquam necessitatibus aliquid totam aperiam illum rem eaque nostrum, eos eveniet voluptates! Quas, deserunt eveniet?")

# Création de quelques réservations pour les voitures
# Booking.create(starts_at: Date.new(2024, 4, 1), ends_at: Date.new(2024, 4, 5), accepted: true, user: user2, car: Car.first)
# Booking.create(starts_at: Date.new(2024, 4, 10), ends_at: Date.new(2024, 4, 15), accepted: true, user: user1, car: Car.last)

puts "seeded #{User.count} users"
puts "seeded #{Car.count} cars"
