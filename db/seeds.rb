User.destroy_all
Car.destroy_all
a = User.create(email: "phil@aruba.it", password: "123456")
b = User.create(email: "jack@ancona.com", password: "123456")
c = User.create(email: "mike@bordeaux.fr", password: "123456")
d = User.create(email: "marco@lewagon.it", password: "123456")
puts "creating user"

Car.create(
  user: a,
  model: "Ferrari Enzo",
  year: "2002",
  seats: 2,
  rate: 900,
  description: "The Enzo Ferrari is a 12 cylinder mid-engine berlinetta sports car named after the company's founder, Enzo Ferrari. It was built in 2002 using Formula One technology, such as a carbon-fibre body, F1-style electrohydraulic shift transmission, and carbon fibre-reinforced silicon carbide (C/SiC) ceramic composite disc brakes.",
  photo: "https://images.unsplash.com/photo-1511360764098-91482031eaf6?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f00548e0353da749a820370a03be8cfc&auto=format&fit=crop&w=1050&q=80%22"
  )
Car.create(
  user: b,
  model: "Lamborghini Aventador",
  year: "2016",
  seats: 2,
  rate: 1080,
  description: "Launched on 28 February 2011 at the Geneva Motor Show, five months after its initial unveiling in Sant'Agata Bolognese, the vehicle, internally codenamed LB834, was designed to replace the then-decade-old Murciélago as the new flagship model",
  photo: ""
  )
Car.create(
  user: c,
  model: "Fiat 500",
  year: "2005",
  seats: 4,
  rate: 100,
  description: "The Fiat 500 is a rear-engined, four seat, small city car that was manufactured and marketed by Fiat Automobiles from 1957 to 1975 over a single generation in two-door saloon and two-door station wagon bodystyles.",
  photo: "https://images.unsplash.com/photo-1520022974279-a96d1e249eab?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f7530977978ea4687765d7fc632ad560&auto=format&fit=crop&w=1488&q=80%22"
)

Car.create(
  user: a,
  model: "Nissan Skyline GT-R",
  year: "2017",
  seats: 2,
  rate: 950,
  description: "The Nissan Skyline GT-R is a sports car based on the Nissan Skyline range. The first cars named Skyline GT-R were produced between 1969 and 1972 under the model code KPGC10, and enjoyed legendary success in local Japanese touring car racing.",
  photo: "https://images.unsplash.com/photo-1518397387277-7843f7251311?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=66ebca56daa6dfde5f015962a683e01a&auto=format&fit=crop&w=1350&q=80"
)

Car.create(user: b,
  model: "Porche Cayman",
  year: "2001",
  seats: 2,
  rate: 970,
  description: "The Porsche Boxster and Cayman are both mid-engined two-seater sports cars built by Porsche. The Boxster, a 2-door, 2-seater roadster was released in 1996 and the Cayman went on sale in late 2005 as the 2-door, 2-seater fastback coupé version.",
  photo: "https://images.unsplash.com/photo-1522325901921-e199d3eaa5ce?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=aec25d37e01cd977fbb900b93b3823b3&auto=format&fit=crop&w=1486&q=80"
)

Car.create(user: c,
  model: "Porche 911",
  year: "1972",
  seats: 2,
  rate: 790,
  description: "The original Porsche 911 (pronounced nine eleven, German: Neunelfer) was a luxury sports car made by Porsche AG of Stuttgart, Germany. The famous, distinctive, and durable design was introduced in autumn 1963 and built through 1989. It was succeeded by a modified version, internally referred to as Porsche 964 but still sold as Porsche 911, as are current models.",
  photo: "https://images.unsplash.com/photo-1511338040450-bf274acbd588?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=93055a0f161d0d0cc6418efb0d678195&auto=format&fit=crop&w=2534&q=80"
)

Car.create(user: a,
  model: "Aston Martin DB5",
  year: "1965",
  seats: 2,
  rate: 580,
  description: "Although not the first in the DB series, the DB5 is famous for being the most recognised cinematic James Bond car, first appearing in the James Bond film Goldfinger (1964).",
  photo: "https://images.unsplash.com/photo-1490559328922-7bf6c9d4efa0?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=e688dac31f9ace6a4f3e5cf034e4ccf3&auto=format&fit=crop&w=1350&q=80"
)

Car.create(user: b,
  model: "Ford Mustang",
  year: "1965",
  seats: 2,
  rate: 680,
  description: "Lee Iacocca's assistant general manager and chief engineer, Donald N. Frey was the head engineer for the T-5 project—supervising the overall development of the car in a record 18 months while Iacocca himself championed the project as Ford Division general manager. The T-5 prototype was a two-seat, mid-mounted engine roadster. This vehicle employed the German Ford Taunus V4 engine.",
  photo: "https://images.unsplash.com/photo-1514999216535-f6b9058f48c3?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8abcd2813daedc4665d595c75cf728ca&auto=format&fit=crop&w=1350&q=80"
)

Car.create(user: c,
  model: "Maserati Quattroporte",
  year: "2008",
  seats: 4,
  rate: 280,
  description: "The Maserati Quattroporte (Italian pronunciation: ˌkwattroˈpɔrte is a four-door luxury sports sedan produced by Italian car manufacturer Maserati. The name translated from Italian literally means four doors. There have been six generations of this car, with the first introduced in 1963, and the current model launched in 2016.",
  photo: "http://cdntdreditorials.azureedge.net/cache/6/4/0/4/9/7/6404971a00c8d2e63f8475b8bfdaa1622f991afa.jpg"
)

Car.create(
  user: a,
  model: "Porche Panamera",
  year: "2010",
  seats: 4,
  rate: 680,
  description: "The Porsche Panamera is a luxury 4-door sedan. It is front-engined with two-wheel drive, with all-wheel drive versions also available.",
  photo: "https://images.unsplash.com/photo-1503376780353-7e6692767b70?ixlib=rb-0.3.5&s=da3df16631fc154abfac92efb7f7a15e&auto=format&fit=crop&w=1350&q=80"
)

Car.create(user: b,
  model: "Ferrari 250 GTO",
  year: "1997",
  seats: 2,
  rate: 1080,
  description: "The Ferrari 250 is a sports car built by Ferrari from 1953 to 1964. The company's most successful early line, the 250 series included several variants. It was replaced by the 275 and the 330.",
  photo: "http://www.sportfair.it/wp-content/uploads/2017/06/ferrari-250-GTO.jpeg"
)

Car.create(user: c,
  model: "BMW i8",
  year: "2016",
  seats: 2,
  rate: 280,
  description: "The BMW i8 can accelerate from a dead-stop to 100 km/h 62 mph in 4.4 seconds and has an electronic limited top speed of 250 km/h or 155 mph",
  photo: "https://images.unsplash.com/photo-1517153295259-74eb0b416cee?ixlib=rb-0.3.5&s=e4f269070687b22fa7bf2d00c12af7ea&auto=format&fit=crop&w=2250&q=80"
)

Car.create(user: a,
  model: "Mercedes 300 SL",
  year: "1955",
  seats: 2,
  rate: 780,
  description: "The Mercedes-Benz SLS AMG (C197 / R197) is a front mid-engine, 2-seater, limited production sports car developed by the Mercedes-AMG division of German automotive manufacturer Mercedes-Benz and was the first Mercedes-Benz automobile designed in-house by AMG",
  photo: "https://images.unsplash.com/photo-1511116110918-3382323a9b6d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a1890299caa7f03644e3f07062916716&auto=format&fit=crop&w=1352&q=80"
)

Car.create(user: b,
  model: "McLaren P1",
  year: "2018",
  seats: 2,
  rate: 280,
  description: "The McLaren P1 is a British limited-production plug-in hybrid sports car produced by McLaren. Debuted at the 2012 Paris Motor Show, retail began in the UK in October 2013 and all 375 units were sold out by November",
  photo: "https://images.unsplash.com/photo-1519078313888-5a8068170f8f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b56bf1555807bc0573711cedaa6eddcd&auto=format&fit=crop&w=2458&q=80"
)

Car.create(
  user: c,
  model: "Aston Martin Vanquish",
  year: "2019",
  seats: 2,
  rate: 580,
  description: "The Aston Martin Vanquish is a super grand tourer introduced by British car manufacturer Aston Martin in 2001 as a successor to the ageing Virage range.",
  photo: "https://www.netcarshow.com/Aston_Martin-AM_310_Vanquish-2013-1024-01.jpg"
)

Car.create(
  user: a,
  model: "Audi R8",
  year: "2017",
  seats: 2,
  rate: 280,
  description: "The Audi R8(Typ 42) is a mid-engine, 2-seater sports car, which uses Audi's trademark quattro permanent all-wheel drive system. It was introduced by the German car manufacturer Audi AG in 2006.",
  photo: "https://images.unsplash.com/photo-1502161254066-6c74afbf07aa?ixlib=rb-0.3.5&s=524108fb9e150667b27dbf1949743c6a&auto=format&fit=crop&w=1351&q=80"
)

Car.create(
  user: b,
  model: "Mercedes SLS AMG",
  year: "1955",
  seats: 2,
  rate: 980,
  description: "The Mercedes-Benz 300 SL (W198) was the first iteration of the SL-Class grand tourer and fastest production car of its day. Introduced in 1954 as a two-seat coupé with distinctive gull-wing doors, it was later offered as an open roadster.",
  photo: "https://www.hdwallpapers.in/walls/2011_mercedes_benz_sls_amg_10-wide.jpg"
)

Car.create(
  user: c,
  model: "Dodge Challenger",
  year: "1965",
  seats: 2,
  rate: 780,
  description: "Introduced in fall 1969 for the 1970 model year, the Challenger was one of two Chrysler E-body cars, the other being the slightly smaller Plymouth Barracuda.",
  photo: "https://images.unsplash.com/photo-1512408896570-b241e90003e7?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=c5ffb69d4106870134b20c1714ea35a8&auto=format&fit=crop&w=2232&q=80"
)
