import 'package:flutter/material.dart';


class  Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10,0,10,0),
      child: Column(children: [Image.asset("assets/images/minecraft.jpg",width: 350, height: 250,), Form(child:Column(children: [
        TextFormField(  decoration: InputDecoration(
            hintText: "Username"
        ),),
        TextFormField(  decoration: InputDecoration(
            hintText: "Email"
        ),),
        TextFormField(  decoration: InputDecoration(
            hintText: "Mot de passe"
        ),),
        TextFormField(  decoration: InputDecoration(
            hintText: "Année de naisaince"
        ),),
        TextFormField(  decoration: InputDecoration(
            hintText: "Adresse de Factuation"
        ),),



      ],) ,)
        ,  TextButton(
          child: Text("s'inscrire"),
          style: TextButton.styleFrom(
            primary: Colors.blue,
          ),
          onPressed: () {
            print('Pressed');
          },
        ),
      ]
        ,  )
      ,

    );
  }
}