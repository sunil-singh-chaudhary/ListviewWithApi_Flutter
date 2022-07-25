// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Catalog_model {
  static List<Item> items = [
    Item(
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12th generation",
        image:
            "https://www.geekrar.com/wp-content/uploads/2020/11/iphone-13-pro-render-1024x576_1605254769-1140x570-1-770x515.jpg")
  ];
}

class Item {
  final String? desc;
  final String? image;
  final String? name;

  Item({
    this.desc,
    this.image,
    this.name,
  });

  //decode CTR+k and CTRL+C for commetn mutliple lines

//   factory Item.fromMap(Map<String, dynamic> map) {
//     return Item(desc: map['desc'], image: map['image'], name: map['name']);
//   }

//   //encode
//   tomap() => {
//         "desc": desc,
//         "image": image,
//         "name": name,
//       };

//CTRL+SHIT+P and select dart data class generator ok and auto make below frommap to map methods
  Item copyWith({
    String? desc,
    String? image,
    String? name,
  }) {
    return Item(
      desc: desc ?? this.desc,
      image: image ?? this.image,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desc': desc,
      'image': image,
      'name': name,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      desc: map['desc'] != null ? map['desc'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) =>
      Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Item(desc: $desc, image: $image, name: $name)';

  @override
  bool operator ==(covariant Item other) {
    if (identical(this, other)) return true;

    return other.desc == desc && other.image == image && other.name == name;
  }

  @override
  int get hashCode => desc.hashCode ^ image.hashCode ^ name.hashCode;
}
