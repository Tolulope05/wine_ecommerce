class Wine {
  int id;
  String name;
  String description;
  String price;
  String imageUrl;
  String sugar;
  String calories;

  Wine({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.sugar,
    required this.calories,
  });

  factory Wine.fromJson(Map<String, dynamic> json) {
    return Wine(
      id: json["id"],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      imageUrl: json['imageUrl'],
      sugar: json['sugar'],
      calories: json['calories'],
    );
  }
}
