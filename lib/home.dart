// import 'package:flutter/cupertino.dart';
// import 'dart:convert';
// import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pre_app/catalog.dart';
import 'package:pre_app/widget.dart';
import 'fb.dart';
import 'dart:convert';

import 'drawer.dart';

// import 'package:pre_app/routes.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Item> items = <Item>[];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    String jsonData = await rootBundle.loadString("asserts/product.json");
    final decodeData = jsonDecode(jsonData);
    var productData = decodeData["products"];
    items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();

    // print(decodeData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text("Home"),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.search_rounded), onPressed: () {})
        ],
      ),

      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: items[index],
            );
          }),

      drawer: Dr(),
      floatingActionButton: fb(),
    );
  }
}
