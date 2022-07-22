class Catalog_model {
  static final items = [
    Item(
        id: 1,
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12th generation",
        price: 999,
        color: "#33505a",
        image:
            "https://www.geekrar.com/wp-content/uploads/2020/11/iphone-13-pro-render-1024x576_1605254769-1140x570-1-770x515.jpg")
  ];
}

class Item {
  Item({this.id, this.name, this.desc, this.price, this.color, this.image});

  final String? color;
  final String? desc;
  final int? id;
  final String? image;
  final String? name;
  final num? price;
}
