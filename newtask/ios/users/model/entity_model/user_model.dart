class ItemModel {
  final String? description;
  final String? imageUrl;
  final String? name;

  ItemModel({
    this.description,
    this.imageUrl,
    this.name,
  });

  factory ItemModel.fromJson(Map<String, dynamic> json) => ItemModel(
        description: json["description"],
        imageUrl: json["image_url"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "description": description,
        "image_url": imageUrl,
        "name": name,
      };
}
