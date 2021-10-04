import 'package:flutter/material.dart';


class  Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("S'authentifier"),
      ),
      body: Column(
        children: [
          Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Image.asset("assets/images/minecraft.jpg", width: 460, height: 215)
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Username"),
            ),
          ),

          Container(
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Mot de passe"),
            ),
          ),





          ElevatedButton(style:
          ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 30), primary: Colors.blueAccent // double.infinity is the width and 30 is the height
          ),

          child: const Text("S'authentifier"),
          onPressed: () {},

        ),
         ElevatedButton( style:
         ElevatedButton.styleFrom(
           minimumSize: Size(double.infinity, 30), primary: Colors.red // double.infinity is the width and 30 is the height
         ),
         child: const Text("créé un compte"),
         onPressed: () {},
             ),
          Row(

            children: [
              Expanded(
                child: Text('Mot de passe oublié ?', textAlign: TextAlign.right),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: Text('Cliquez içi', textAlign: TextAlign.left),
                ),
              )



              ]
          ),



    ]
        ,  )
      ,

    );
  }
}