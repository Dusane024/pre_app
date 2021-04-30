// import 'package:flutter/cupertino.dart';
import 'dart:convert';

class Catalog {
  static final items = [
    Item(
      id: 1,
      name: "IPhone 11",
      image:
          "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQ3DaRB1Hc37J_SlBKoHEhmetIF5rRDfage5xHdlvVIbYpRoGwhIb7S4W9WzX5VuaPKFBAY1lKfTw&usqp=CAc",
      price: 60000,
      desc: "512gb",
    ),
    Item(
      id: 2,
      name: "IPhone 12",
      image:
          "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSAIyojzSzGY1Eq7D_eW79hNUnv_TmBU546wSEfZa-5rIpK5ao7AE7UQPOS-_6OR5d43845PJwzrw&usqp=CAc",
      price: 120000,
      desc: "512gb",
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        price: map["price"],
        desc: map["desc"],
        image: map['image']);
  }

  toMap() => {
        "id": id,
        "name": name,
        "price": price,
        "desc": desc,
        "image": image,
      };
}
