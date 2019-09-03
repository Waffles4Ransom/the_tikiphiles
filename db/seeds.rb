user1 = User.create(name: "Ryan", username: "maitaimillionaire", password: "password")
user2 = User.create(name: "Rufio", username: "rufiocantdrink", password: "123456")

drinks = [
  {
    name: "Mai Tai",
    liquor: "rum based" ,
    served: "on rocks",
    rating: 9 ,
    location: "Barcelona, Spain" ,
    bar: "Tiki Chateau",
    image_path: "https://i.imgur.com/PDA2HGE.jpg",
    user: user1
  },
  {
    name: "Mammoth Tusk",
    liquor: "rum based",
    served: "on rocks" ,
    rating: 6,
    location: "Palm Springs, CA",
    bar: "Bootlegger Tiki",
    image_path: "https://i.imgur.com/DJIYQZL.jpg",
    user: user2
  },
  {
    name: "Bourbon Special",
    liquor: "whiskey based",
    served: "on rocks",
    rating: 9,
    location: "Phoenix, AZ",
    bar: "Undertow",
    image_path: "https://i.imgur.com/6ynN5QF.jpg",
    user: user2
  },
  {
    name: "Pacific Punch",
    liquor: "rum based",
    served: "fishbowl",
    rating: 8,
    location: "Denver, CO",
    bar: "Adrift",
    image_path: "https://i.imgur.com/oAr2lFy.jpg",
    user: user2
  },
  {
    name: "Mai Tai",
    liquor: "rum based",
    served: "on rocks",
    rating: 10,
    location: "Prague, Czech Republic",
    bar: "Hemingway Bar",
    image_path: "https://i.imgur.com/kOSV7S0.jpg",
    user: user1
  },
  {
    name: "Navy Grog",
    liquor: "gin based",
    served: "shaken",
    rating: 8,
    location: "Denver, CO",
    bar: "Big Trouble",
    image_path: "https://i.imgur.com/PCuxUI4.jpg",
    user: user2
  },
  {
    name: "Singapore Sling",
    liquor: "gin based" ,
    served: "on rocks",
    rating: 6,
    location: "Monterey, CA",
    bar: "Hula's",
    image_path: "https://i.imgur.com/fuCemC2.jpg?2",
    user: user2
  }
]

drinks.each{ |d| Drink.create(d) }