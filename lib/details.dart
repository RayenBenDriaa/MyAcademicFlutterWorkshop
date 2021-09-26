import 'package:flutter/material.dart';
import 'product_details.dart';
import 'register.dart';


class  Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){

    return MaterialApp(
        title: "G-store esprit",
        home: Scaffold(appBar:AppBar(title: const Text("Inscription")),
          body: Register() ,
          //body: Product_Details() ,



        )
    ) ;



  }
}
