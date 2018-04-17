User.destroy_all
Car.destroy_all

a = User.create(email: "phil@aruba.it", password: "123456")
b = User.create(email: "jack@ancona.com", password: "123456")
c = User.create(email: "mike@bordeaux.fr", password: "123456")

Car.create(user: a, model: "ferrari", year: "2007", seats: 2, rate: 200, description: "Beautiful red car!")
Car.create(user: b,model: "lamborghini", year: "2018", seats: 2, rate: 180, description: "Faboulus yellow car!")
Car.create(user: c,model: "fiat 500", year: "2005", seats: 4, rate: 100, description: "Beautiful city car!")
Car.create(user: a,model: "giulietta", year: "2017", seats: 4, rate: 150, description: "Amazing blue car!")
Car.create(user: b,model: "porche", year: "2001", seats: 2, rate: 170, description: "Fast silver car!")
Car.create(user: c,model: "fiat panda", year: "1997", seats: 4, rate: 80, description: "Incredible sport car!")
