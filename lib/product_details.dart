import 'package:flutter/material.dart';


class  Product_Details extends StatelessWidget {
  const Product_Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10,0.0,10,40),
      child: Column(children: [Image.asset("assets/images/dmc5.jpg",width: 350, height: 250,),Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
        //,ElevatedButton.icon(onPressed: () {print('Pressed');}, icon: Icons.ac_uni, label: const Text("acheter"))




        ,TextButton(
          child: Text('Buy'),
          style: TextButton.styleFrom(
            primary: Colors.blue,
          ),
          onPressed: () {
            print('Pressed');
          },
        )
      ]
        ,  )
      ,

    );
  }
}