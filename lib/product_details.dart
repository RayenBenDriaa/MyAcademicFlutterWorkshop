import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductDetails extends StatefulWidget {
  final String _image;
  final String _title;
  final String _description;
  final int _price;
  final int _quantity;

  const ProductDetails(
      this._image, this._title, this._description, this._price, this._quantity, {Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  late int _currentQuantity;

  final String _baseUrl = "10.0.2.2:9090";

  @override
  void initState() {
    _currentQuantity = widget._quantity;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Image.network("http://10.0.2.2:9090/img/" + widget._image, width: 460, height: 215)
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 50),
            child: Text(widget._description),
          ),
          Text(widget._price.toString() + " TND", textScaleFactor: 3),
          Text("Exemplaires disponibles : " + _currentQuantity.toString()),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          label: const Text("Acheter", textScaleFactor: 1.5),
          icon: const Icon(Icons.shopping_basket_rounded),
          onPressed: () {
            http.get(Uri.http(_baseUrl, "/library/" + "616d75ced2391777c9be4cad" + "/" + "616d75ced2391777c9be4ca2"))
                .then((http.Response response) {
                  if(response.statusCode == 200) {
                    Map<String, dynamic> countFromServer = json.decode(response.body);
                    if(int.parse(countFromServer["count"].toString()) != 0) {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const AlertDialog(
                              title: Text("Information"),
                              content: Text("Vous possédez déjà ce jeu !"),
                            );
                          });
                    }
                    else {
                      Navigator.pop(context);
                    }
                  }
                  else {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const AlertDialog(
                            title: Text("Information"),
                            content: Text("Une erreur s'est produite. Veuillez réessayer !"),
                          );
                        });
                  }
            });
          }
      ),
    );
  }
}