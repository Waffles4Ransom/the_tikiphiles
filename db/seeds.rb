user1 = User.create(name: "Ryan", username: "maitaimillionaire", password: "password")
user2 = User.create(name: "Rufio", username: "rufiocantdrink", password: "123456")

drinks = [
  {
    name: "Smuggler's Revenge",
    category: "mai tai",
    rating: 9 ,
    location: "Undertow" ,
    bar: "Phoenix, AZ",
    image_path: "https://i.imgur.com/kOSV7S0.jpg",
    user: user1
  },
  {
    name: "Coconut Chi Chi",
    category: "frozen",
    rating: 6,
    location: "Denver, CO",
    bar: "Adrift",
    image_path: "https://imgur.com/a/eUOcay1",
    user: user2
  },
  {
    name: "Bourbon Special",
    category: "bourbon special",
    rating: 9,
    location: "Phoenix, AZ",
    bar: "Undertow",
    image_path: "https://imgur.com/6ynN5QF",
    user: user2
  },
  {
    name: "Pacific Punch",
    category: "zombie",
    rating: 8,
    location: "Palm Springs, CA",
    bar: "Bootlegger Tiki",
    image_path: "https://imgur.com/oAr2lFy",
    user: user2
  },
  {
    name: "62 Moons",
    category: "mai tai",
    rating: 10,
    location: "Palm Springs, CA",
    bar: "Bootlegger Tiki",
    image_path: "https://i.imgur.com/PDA2HGE.jpg",
    user: user1
  },
  {
    name: "Ku Ku Kachoo",
    category: "whiskey based",
    rating: 8,
    location: "Denver, CO",
    bar: "Adrift",
    image_path: "https://imgur.com/M5ie1IR",
    user: user2
  },
  {
    name: "Singapore Sling",
    category: "singapore sling",
    rating: 9,
    location: "Los Angeles, CA",
    bar: "Tiki-Ti",
    image_path: "https://i.imgur.com/K8SK4rv.jpg",
    user: user2
  }
]

drinks.each{ |d| Drink.create(d) }