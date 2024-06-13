class Catalog {
  static List<Item> item = [];
}

class Item {
  final String itemId;
  final String itemName;
  final String itemDesc;
  final String itemPrice;
  final String itemImage;

  Item(
      {required this.itemId,
      required this.itemName,
      required this.itemDesc,
      required this.itemPrice,
      required this.itemImage});

  ///fromJson
  factory Item.fromJson(Map<String, dynamic> parsedJson) {
    return Item(
      itemId: parsedJson["id"],
      itemName: parsedJson["name"],
      itemDesc: parsedJson["desc"],
      itemPrice: parsedJson["price"],
      itemImage: parsedJson["image"],
    );
  }

  ///toJson
  toJson() {
    return {
      "id": itemId,
      "name": itemName,
      "desc": itemDesc,
      "price": itemPrice,
      "image": itemImage
    };
  }
}
