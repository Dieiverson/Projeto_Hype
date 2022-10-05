class ProductData {
  late int id;
  late String name;
  late String description;
  late double price;
  late List<String> images;

  Map<String, dynamic> toJson() => {
    'id': id.toString(),
    'name': name,
  };
 }