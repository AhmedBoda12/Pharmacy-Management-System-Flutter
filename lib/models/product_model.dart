// ignore_for_file: public_member_api_docs, sort_constructors_first

class ProductModel {
  final String id;
  String title;
  String desc;
  String? size;
  String? color;
  int price;
  String categoryId;
  String image;
  final DateTime createdAt;
  DateTime updatedAt;

  ProductModel({
    required this.id,
    required this.title,
    required this.desc,
    this.size,
    this.color,
    required this.price,
    required this.categoryId,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["_id"],
        title: json["title"],
        desc: json["desc"],
        size: json["size"],
        color: json["color"],
        price: json["price"],
        categoryId: json["categoryId"],
        image: json["image"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "title": title,
        "desc": desc,
        "size": size,
        "color": color,
        "price": price,
        "categoryId": categoryId,
        "image": image,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}
