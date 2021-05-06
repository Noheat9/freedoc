# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Patient.destroy_all
Doctor.destroy_all
Appointment.destroy_all
City.destroy_all
Specialty.destroy_all



10.times do
  doctor = Doctor.create!(
    first_name: Faker::FunnyName.name,
    last_name: Faker::GreekPhilosophers.name,
    zip_code: Faker::Address.zip_code,
  )
  specialties = Specialty.create(
    jobs: Faker::Job.title,
  )
  patient = Patient.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
  )
  cities = City.create!(
    name: Faker::Nation.capital_city,
  )
end

10.times do
  appointments = Appointment.create!(
    cities_id: (1..10),
    doctors_id: (1..10),
    patients_id: (1..10),
    date: Faker::Date.between(from: 100.days.ago, to: Date.today),
  )
end

