import 'package:flutter/material.dart';

class Dr extends StatefulWidget {
  @override
  _DrState createState() => _DrState();
}

class _DrState extends State<Dr> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
      children: <Widget>[

        UserAccountsDrawerHeader(accountName:Text("RD"), accountEmail:Text("RD@123"),
        currentAccountPicture: CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('asserts/RD.jpg.JPG'),

        )),
        ListTile(
          leading: Icon(Icons.person,size: 35,),
          title: Text("Name",textScaleFactor: 1.2),
          subtitle: Text("Surname"),
          trailing: Icon(Icons.edit),
          // tileColor: Colors.blue,
        ),
        ListTile(
          leading: Icon(Icons.subdirectory_arrow_right_outlined,size: 35,),
          title: Text("Address",textScaleFactor: 1.2,),
          // subtitle: Text("Surname"),
          trailing: Icon(Icons.edit),

        ),


      ],
      ),

    );
  }
}
