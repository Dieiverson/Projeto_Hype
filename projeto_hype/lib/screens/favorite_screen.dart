import 'package:flutter/material.dart';

import '../models/favorite.dart';
import '../models/product.dart';
import '../tiles/fav_product_tile.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  refresh() {
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    List<int> favs = Favorite().getFavorites();

    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: const [
              Text("Favoritos",textAlign: TextAlign.center,)
            ],
          ),
          actions: [ Image.asset("images/logo_green.jpg", height: 55),],
          backgroundColor: const Color.fromARGB(
              255, 28, 184, 145), //const Color.fromARGB(255, 47, 62, 82) //
        ),
        body:ListView(children: [
          Column(
            children: List.generate(favs.length, (index) {
              return FavTile(Product().getProductById(favs[index]),refresh);
            }),
          ),
        ]));
  }
}
