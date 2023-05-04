# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
10.times do |index|
    random_seconds = rand(-360000..8640000)
    Patient.create(first_name: "Prénom#{index}", last_name: "nom#{index}",city_id: rand(1..index))
    Doctor.create(first_name: "Prénom#{index}", last_name: "nom#{index}",city_id: rand(1..index))
    City.create(zip_code: "ville#{index}")
    Specialty.create(name: "Specialité#{index}")
    Appointment.create(doctor_id: rand(1..index), patient_id: rand(1..index), city_id: rand(1..index), date: Time.now + random_seconds)
    JoinTableDoctorSpecialty.create(doctor_id: rand(1..index), specialty_id: rand(1..index))
  end