// import 'dart:html';

// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pre_app/drawer.dart';
import 'package:pre_app/routes.dart';
import 'package:pre_app/home.dart';
import 'home.dart';
import 'drawer.dart';
import 'package:pre_app/drawer.dart';
import 'dart:convert';

void main()
{
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.white));
  runApp(MaterialApp(
    title: "My",
    // home: Main(),

    darkTheme: ThemeData(
brightness: Brightness.dark,
    ),
    initialRoute: MyRouts.login,
    routes: {
      MyRouts.login:(context)=>Login(),
      MyRouts.home:(context)=>Home(),
    },

    debugShowCheckedModeBanner: false,
  ));





}
class Login extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Login> {
  bool button=false;
  final user = TextEditingController();
  final password = TextEditingController();
  moveToHome(BuildContext context)async{
    {
      if(_key.currentState.validate()){
        setState(() {
          button =true;
          user.clear();
          password.clear();
        });
        await Future.delayed(Duration(seconds: 1));
       await Navigator.pushNamed(context, MyRouts.home);
        setState(() {
          button=false;
        });

      }}
  }

  final _key=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
        leading:Icon(Icons.login),
        actions: [
          IconButton(icon: Icon(Icons.search_rounded), onPressed: (){

          })

        ],
      ),
     body: Card(
       child:SingleChildScrollView(
       child: Form(
         key: _key,
         child: Column(
           children: <Widget>[

            Image.asset('asserts/login.jpg',height: 200
              ,
            width: 200,),
             Text("Welcome",style: TextStyle(
               fontSize: 40,


               fontWeight: FontWeight.bold,
             )),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child:
               TextFormField(
                 keyboardType: TextInputType.text,
                 controller: user,

                 decoration: InputDecoration(
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(8),
                   ),
                   labelText: "Enter Email",
                   // hintText: Icon(Icons.security),
                   prefix: Icon(Icons.person_outlined),
                   // suffixIcon: Icon(Icons.security),
                   fillColor: Colors.blue,

                 ),
                 validator: (value){
                   if(value.isEmpty)
                     {
                       return "Email should not empty";
                     }
                   return null;
                 },

               )),



                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                   keyboardType: TextInputType.text,
                    controller: password,
                   obscureText: true,
                   decoration: InputDecoration(
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(8),
                     ),
                     labelText: "Password",
                     // hintText: "Email",
                     prefix: Icon(Icons.security),
                     suffixIcon:Icon(Icons.visibility),
                     fillColor: Colors.blue,

                   ),
                    validator: (value){
                     if(value.length<5)
                       {
                         return "Enter Valid";
                       }
                     return null;
                    },

               ),
                ),
                       SizedBox(
                         height: 10,
                         width: 10,
                       ),
                       Material(
                         shadowColor: Colors.blue,
                         color: Colors.blue,
                         borderRadius: BorderRadius.circular(button?50:100),
                         child:InkWell(
                           onTap: ()=>moveToHome(context),

                         child: AnimatedContainer(
                       duration: Duration(seconds: 1),
                           height: 50,
                           width: button?50:100,
                           alignment: Alignment.center,
                           child:button?Icon(Icons.done): Text("Login",style:TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: button?15:25,
                             color: Colors.white,

                             // color: Colors.red,

                           ),),
                         ),
                       ),
                       ),
                       // ElevatedButton(onPressed: (){
             // if(_key.currentState.validate()){
             //   setState(() {
             //     user.clear();
             //     password.clear();

             //
             //   });
             //   Navigator.pushNamed(context,MyRouts.home);
             // }
             //
             // }, child: Text("Login"))


           ],

         ),
       ),
     )

     ),

    );
  }
}
