user1 = User.create(name: "Ryan", username: "maitaimillionaire", password: "password")
user2 = User.create(name: "Rufio", username: "rufiocantdrink", password: "123456")

drinks = [
  {
    name: "Smuggler's Revenge",
    category: "mai tai",
    rating: 9 ,
    location: "Undertow" ,
    bar: "Phoenix, AZ",
    user: user1
  },
  {
    name: "Coconut Chi Chi",
    category: "blended drink",
    rating: 10,
    location: "Adrift",
    bar: "Denver, CO",
    user: user2
  },
  {
    name: "Bourbon Special",
    category: "bourbon special",
    rating: 8,
    location: "Adrift",
    bar: "Denver, CO",
    user: user2
  }
]

drinks.each{ |d| Drink.create(d) }