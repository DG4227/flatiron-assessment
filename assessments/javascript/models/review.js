// # Restaurant#customers
// # Restaurant#reviews

const Review = class Review {

  static all() {
    Store.reviews
  }

  constructor(content, customer, restaurant) {
    this.content = content
    this.customer = customer
    this.restaurant = restaurant
    Store.reviews.push(this)
  }
  }
