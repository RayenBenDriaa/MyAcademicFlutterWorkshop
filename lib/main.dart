import 'package:flutter/material.dart';
import 'details.dart';
import 'product_details.dart';

void main() {
  runApp(const MyApp());
}

class  MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
Widget build(BuildContext context){

      return MaterialApp(
      title: "G-store esprit",
          home: Details(),


      ) ;



  }
}

