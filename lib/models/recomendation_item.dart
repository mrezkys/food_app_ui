class RecommendationItem {
  String title;
  String subtitle;
  double ratings;
  double price;
  List<String> images;

  RecommendationItem(this.title, this.subtitle, this.ratings, this.price, this.images);
}

List<RecommendationItem> recomendationItem = recomendationItemData.map((data) => RecommendationItem(data['title'], data['subtitle'], data['ratings'], data['price'], data['images'])).toList();

var recomendationItemData = [
  {
    "title": "Burger Special",
    "subtitle": "Food",
    "ratings": 4.3,
    "price": 5.23,
    "images": ["assets/images/a.png"]
  },
  {
    "title": "Cola Drink",
    "subtitle": "Drink",
    "ratings": 4.2,
    "price": 2.20,
    "images": ["assets/images/b.png"]
  }
];
