// import 'dart:collection';
import 'catalog.dart';
import 'package:flutter/material.dart';


// import 'catalog.dart';
class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key key,@required this.item}) :assert (item != null) ,super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(

      elevation: 0.0,
        // color: Colors.lightBlueAccent,
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: ListTile(

          leading: Image.network(item.image,scale: 1.5),
          title: Text('${item.name}'),
          subtitle: Text('${item.desc}'),
          trailing: Text("\$"+item.price.toString(),textScaleFactor: 1.3),


        ),

      ),

    );
  }
}
