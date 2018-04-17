# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Car.destroy_all

Car.create(model: "ferrari", year: "2007", seats: 2, rate: 200, description: "Beautiful red car!")
Car.create(model: "lamborghini", year: "2018", seats: 2, rate: 180, description: "Faboulus yellow car!")
Car.create(model: "fiat 500", year: "2005", seats: 4, rate: 100, description: "Beautiful city car!")
Car.create(model: "giulietta", year: "2017", seats: 4, rate: 150, description: "Amazing blue car!")
Car.create(model: "porche", year: "2001", seats: 2, rate: 170, description: "Fast silver car!")
Car.create(model: "fiat panda", year: "1997", seats: 4, rate: 80, description: "Incredible sport car!")


User.create(email: "phil@aruba.it", password: "123456")
User.create(email: "jack@ancona.com", password: "123456")
User.create(email: "mike@bordeaux.fr", password: "123456")

