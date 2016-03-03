# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
50.times do
  Transaction.create(payee: "Faker::Company.name", amount: Faker::Number.decimal(2), date: Faker::Date.backward(80), account_type: "credit")
end
