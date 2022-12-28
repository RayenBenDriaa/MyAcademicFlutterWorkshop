import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'my_game_info.dart';
import 'package:fluttertps/home/product_info.dart';

class MyGames extends StatefulWidget {
  const MyGames({Key? key}) : super(key: key);

  @override
  State<MyGames> createState() => _MyGamesState();
}

class _MyGamesState extends State<MyGames> {
  late Future<bool> fetchedGames;

  final List<Product> _products = [];

  final String _baseUrl = "10.0.2.2:9090";

  Future<bool> fetchGames() async {
    http.Response response = await http.get(Uri.http(_baseUrl, "/library/" + "616d75ced2391777c9be4cad"));

    List<dynamic> gamesFromServer = json.decode(response.body);

    for(int i = 0; i < gamesFromServer.length; i++) {
      Map<String, dynamic> gameFromServer = gamesFromServer[i];
      _products.add(Product(gameFromServer["_id"], gameFromServer["image"], gameFromServer["title"],
          gameFromServer["description"], int.parse(gameFromServer["price"].toString()),
          int.parse(gameFromServer["quantity"].toString())));
    }

    return true;
  }

  @override
  void initState() {
    fetchedGames = fetchGames();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchedGames,
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        if(snapshot.hasData) {
          return GridView.builder(
            itemCount: _products.length,
            itemBuilder: (BuildContext context, int index) {
              return MyGameInfo(_products[index].image, _products[index].title);
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                mainAxisExtent: 130
            ),
          );
        }
        else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
