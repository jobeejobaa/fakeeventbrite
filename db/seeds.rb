# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Attendance.destroy_all
Event.destroy_all
User.destroy_all
puts "✅ Database destroyed successfully!"

user1 = User.create!(
  first_name: "Jobee",
  last_name: "Delf",
  description: "yo yo yo",
  email: "jobee@yopmail.com",
  password: "jobee123",
  password_confirmation: "jobee123"
)

user2 = User.create!(
  first_name: "Croquette",
  last_name: "Enzolette",
  description: "le boss",
  email: "croquette@yopmail.com",
  password: "croquette123",
  password_confirmation: "croquette123"
)

# Créer des événements
event1 = Event.create!(
  title: "Apéro",
  description: "Aller viens on est bien! regarde tout ce qu'on peut faire",
  start_date: 3.days.from_now,
  duration: 120,
  price: 50,
  location: "Paris",
  user: user1
)

event2 = Event.create!(
  title: "Soirée Jeux Vidéo",
  description: "On joue toute la nuit !",
  start_date: 5.days.from_now,
  duration: 240,
  price: 0,
  location: "Paris",
  user: user2
)

event3 = Event.create!(
  title: "Ballade",
  description: "Promenade sur les quais",
  start_date: 7.days.from_now,
  duration: 180,
  price: 15,
  location: "Paris",
  user: user1
)

puts "✅ Database seeded successfully!"