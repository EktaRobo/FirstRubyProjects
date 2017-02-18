# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Person.destroy_all

Person.create! [
    { first_name: "Kalman", last_name: "Smith", age: 33, login: "kman", pass: "abc123" },
  { first_name: "John", last_name: "Whatever", age: 27, login: "john1", pass: "123abc" },
  { first_name: "Michael", last_name: "Smith", age: 15, login: "mike", pass: "not_telling" },
  { first_name: "Josh", last_name: "Oreck", age: 57, login: "josh", pass: "password1" },
  { first_name: "John", last_name: "Smith", age: 27, login: "john2", pass: "no_idea" },
  { first_name: "Bill", last_name: "Gates", age: 75, login: "bill", pass: "windows3.1" },
  { first_name: "LeBron", last_name: "James", age: 30, login: "bron", pass: "need more rings" }
]
