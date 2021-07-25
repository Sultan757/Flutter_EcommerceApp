class CatalogModel{
   static final items = [
    Item(
        id: "CodePur001",
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12th generation",
        price: 999,
        color: "#33505a",
        image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc")
  ];
}


class Item{
   final String name;
   final num price;
   final String id;
   final String desc;
   final String color;
   final String image;

  Item({this.name, this.price, this.id, this.desc, this.color, this.image});

 }
