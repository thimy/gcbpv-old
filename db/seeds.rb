# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create!(name: "Luke", movie: movies.first)
User.create(email: "admin@gcbpv.org", encrypted_password: "tuttut")

teachers = [
  { name: "Aurore Bréger", status: "active" },
  { name: "Tanguy Pacault", status: "active" },
  { name: "Joran Marsac", status: "active" },
  { name: "Loïc Joucla", status: "active" },
  { name: "Youn Lebreton", status: "active" },
  { name: "Carine Fourcade", status: "active" },
  { name: "Goulven Saout", status: "active" },
  { name: "Yaël Benahim", status: "active" },
  { name: "Ronan Robert", status: "active" },
  { name: "Wenceslas Hervieux", status: "active" },
  { name: "Nathalie Herczog", status: "active" },
  { name: "Mannaîg Le Guevel", status: "active" },
  { name: "Yolaine Delamaire", status: "active" }
]

teachers.each do |teacher|
  Teacher.create!(teacher)
end

instruments = [
  { name: "Percussions" },
  { name: "Accordéon à touches piano" },
  { name: "Biniou" },
  { name: "Bombarde" },
  { name: "Clarinette" },
  { name: "Guitare" },
  { name: "Chant" },
  { name: "Cornemuse écossaise" },
  { name: "Tin whistle" },
  { name: "Saxophone" }
]

instruments.each do |instrument|
  Instrument.create!(instrument)
end

5.times do |i|
  Payor.create!(last_name: "Payor #{i + 1}", mail: "payor#{i + 1}@mail.com")
end

10.times do |i|
  Student.create!(last_name: "Student #{i + 1}", payor_id: rand(1..5))
end
