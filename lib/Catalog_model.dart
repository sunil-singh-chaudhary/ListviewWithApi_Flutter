class Catalog_model {
  static final items = [
    Item(
       
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12th generation",
      
        image:
            "https://www.geekrar.com/wp-content/uploads/2020/11/iphone-13-pro-render-1024x576_1605254769-1140x570-1-770x515.jpg")
  ];
}

class Item {
  Item({ this.name, this.desc, this.image});


  final String? desc;
  final String? image;
  final String? name;

}
