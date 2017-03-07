# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
OrderStatus.delete_all
OrderStatus.create! id: 1, status: "New"
OrderStatus.create! id: 2, status: "Accepted"
OrderStatus.create! id: 3, status: "Processing"
OrderStatus.create! id: 4, status: "Dispatched"