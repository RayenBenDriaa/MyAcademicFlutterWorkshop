import 'package:flutter/material.dart';



class Libary extends StatelessWidget {
  const Libary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("Ma bibliothèque"),
    )
    );
  }
}