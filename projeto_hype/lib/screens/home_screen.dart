import 'package:flutter/material.dart';
import 'package:projeto_hype/tiles/product_tile.dart';

import '../models/product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        initialData: const [],
        future: Product().getProducts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
                appBar: AppBar(title: const Text("Ecommerce Hype")),
                body: GridView.count(
                    crossAxisCount: 2,
                    children: List.generate(
                      snapshot.data!.length,
                      (index) {
                        return ProductTile(snapshot.data![index],context);
                      },
                    )));
          }
          else {
            return Container();
          }
        });
  }
}
