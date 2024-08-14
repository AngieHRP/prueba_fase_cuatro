import 'package:prueba_fase_4/templates/models/rating_model.dart';

class ProductModel {
  int id;
  String title;
  double price;
  String description;
  String category;
  String image;
  RatingModel rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  factory ProductModel.fromJson(Map<String?, dynamic> json) => ProductModel(
        rating: RatingModel.fromJson(json["rating"]),
        id: json["id"] ?? 0,
        title: json["title"] ?? '',
        price: json["price"] != null
            ? double.parse(json["price"].toString())
            : 0.0,
        description: json["description"] ?? '',
        category: json["category"] ?? '',
        image: json["image"] ?? '',
      );

  Map<String?, dynamic> toJson() => {
        "rating": rating,
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category": category,
        "image": image,
      };

  factory ProductModel.empty() => ProductModel(
        rating: RatingModel.empty(),
        id: 0,
        title: '',
        price: 0.0,
        description: '',
        category: '',
        image: '',
      );
}
