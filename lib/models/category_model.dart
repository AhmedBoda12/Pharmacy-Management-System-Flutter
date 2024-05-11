class CategotyModel {
  final String? id;
  final String categoryname;
  final String? image;

  CategotyModel({
    this.id,
    required this.categoryname,
    this.image,
  });
  factory CategotyModel.fromMap(Map<String, dynamic> json) => CategotyModel(
        id: json["_id"],
        categoryname: json["categoryname"],
        image: json["image"],
      );

  Map<String, dynamic> toMap() => {
        "_id": id,
        "categoryname": categoryname,
        "image": image,
      };
}
