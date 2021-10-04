import 'package:flutter/material.dart';
import 'product_details.dart';
import 'register.dart';
import 'login.dart';


class  Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){

    return MaterialApp(
        title: "G-store esprit",
        home: Scaffold(appBar:AppBar(title: const Text("Inscription")),
         body: Login() ,
         // body: Product_Details() ,



        )
    ) ;



  }
}
class Product {
  final String _image;
  final String  _title;
  final int _price;
  Product (this._image,this._title,this._price);

  @override
  String toString() {
    return 'Product{_image: $_image, _title: $_title, _price: $_price}';
  }
}
