import 'package:prueba_fase_4/templates/models/rating_model.dart';

class ProductModel {
  /// Id de identificación del producto
  int id;

  /// Título del producto
  String title;

  /// Precio del producto
  double price;

  /// Descripción del producto
  String description;

  /// Categoría a la cual corresponde el producto
  String category;

  /// Url de la imagen correspondiente al producto
  String image;

  /// Modelo de calificación del producto
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
