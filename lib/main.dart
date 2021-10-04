import 'package:flutter/material.dart';
import 'details.dart';
import 'home.dart';
import 'product_details.dart';
import 'login.dart';
import 'home.dart';
import 'register.dart';

void main() {
  runApp(const MyApp());
}

class  MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List <Product> _products= [];

  @override
Widget build(BuildContext context){

      return MaterialApp(
      title: "G-store esprit",
          home: Login(),


      ) ;



  }
}

