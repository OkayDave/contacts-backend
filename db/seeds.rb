# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
#
require 'faker'

User.all.each(&:destroy!)
Contact.all.each(&:destroy!)

jd = User.create(first_name: "John", last_name: "Doe", email: "j.doe@gmail.com", password: "12345678", password_confirmation: "12345678")

5.times do
  Contact.create({
    user_id: jd.id,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    occupation: Faker::Lorem.sentence(2),
    employer: Faker::Company.name,
    email: Faker::Internet.email,
    website: Faker::Internet.url,
    twitter: Faker::Lorem.word,
    phone_home: Faker::PhoneNumber.phone_number,
    phone_work: Faker::PhoneNumber.phone_number,
    phone_mobile: Faker::PhoneNumber.cell_phone
  })
end
