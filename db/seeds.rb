require 'faker'
100.times do
  doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code)
  patient = Patient.create!(last_name: Faker::Name.last_name, first_name: Faker::Name.first_name)
  appointment = Appointment.create!(date: Faker::Date.between(from: 1.year.ago, to: Date.today))
  city = City.create!(name: Faker::Address.city, zipcode: Faker::Address.zip_code)
  specialty = Specialty.create!(name: Faker::Educator.subject)
end
