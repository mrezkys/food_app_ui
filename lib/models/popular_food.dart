class Food {
  String title;
  String subtitle;
  double rating;
  String calories;
  double price;
  String description;
  List<String> images;

  Food(this.title, this.subtitle, this.rating, this.calories, this.price, this.description, this.images);
}

List<Food> popularFood = popularFoodData.map((data) => Food(data['title'], data['subtitle'], data['rating'], data['calories'], data['price'], data['description'], data['images'])).toList();

var popularFoodData = [
  {
    "title": "Food Family Package",
    "subtitle": "2 Food, 2 Drink, 2 Appetizer",
    "rating": 4.9,
    "calories": "290g",
    "price": 129.01,
    "description": "The food family package food menu is a menu that is serbed for one family consisting of 4 - 5 people consisring of food and drinks ",
    "images": ["assets/images/1.jpg", "assets/images/2.jpg"]
  },
  {
    "title": "Big Family Package",
    "subtitle": "2 Food, 2 Drink, 2 Appetizer",
    "rating": 4.4,
    "calories": "300g",
    "price": 229.01,
    "description": "The Big family package food menu is a menu that is serbed for one family consisting of 6-8 people consisring of food and drinks ",
    "images": ["assets/images/2.jpg", "assets/images/1.jpg"]
  },
];
