import 'package:flutter/material.dart';
import 'package:pre_app/routes.dart';
class fb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: (){
      Navigator.pushNamed(context, MyRouts.home);
    },
    child: Icon(Icons.refresh,color: Colors.white,));
    
  }
}
