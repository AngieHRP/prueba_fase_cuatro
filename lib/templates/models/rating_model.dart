class RatingModel {
  double rate;
  int count;

  RatingModel({
    required this.rate,
    required this.count,
  });

  factory RatingModel.fromJson(Map<String?, dynamic> json) => RatingModel(
        rate:
            json["rate"] != null ? double.parse(json["rate"].toString()) : 0.0,
        count: json["count"] ?? 0,
      );

  Map<String?, dynamic> toJson() => {
        "rate": rate,
        "count": count,
      };

  factory RatingModel.empty() => RatingModel(
        rate: 0.0,
        count: 0,
      );
}
