import 'dart:convert';

class CatalogModel{
   static List<Item> items;
}


class Item {
   final String name;
   final num price;
   final String id;
   final String desc;
   final String color;
   final String image;

  Item({
     this.name,
     this.price,
     this.id,
     this.desc,
     this.color,
      this.image,
  });


  Item copyWith({
    String name,
    num price,
    int id,
    String desc,
    String color,
    String image,
  }) {
    return Item(
      name: name ?? this.name,
      price: price ?? this.price,
      id: id ?? this.id,
      desc: desc ?? this.desc,
      color: color ?? this.color,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'price': price,
      'id': id,
      'desc': desc,
      'color': color,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      name: map['name'],
      price: map['price'],
      id: map['id'].toString(),
      desc: map['desc'],
      color: map['color'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(name: $name, price: $price, id: $id, desc: $desc, color: $color, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Item &&
      other.name == name &&
      other.price == price &&
      other.id == id &&
      other.desc == desc &&
      other.color == color &&
      other.image == image;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      price.hashCode ^
      id.hashCode ^
      desc.hashCode ^
      color.hashCode ^
      image.hashCode;
  }
 }
