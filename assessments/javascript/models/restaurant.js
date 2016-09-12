
const Restaurant = class Restaurant {

  static all() {
    Store.restaurants
  }

  static findByName(name) {
    var restaurants = Store.restaurants
    let matches = (() => restaurants.filter(function (restaurant) {
      return restaurant.name == name
    }))()
    return matches
  }

  constructor(name) {
    this.name = name
    Store.restaurants.push(this)
  }
  }
