import 'package:flutter/material.dart';
import 'package:projeto_hype/tiles/product_tile.dart';
import 'package:projeto_hype/tiles/side_drawer.dart';
import '../delegates/data_search.dart';
import '../models/product.dart';
import 'cart_screen.dart';

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
              appBar: AppBar(
                title: Row(
                  children: const [
                     Text("Acme - Produtos")
                  ],
                ),
                centerTitle: true,
                actions: [
                  IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () async {
                        await showSearch(context: context, delegate: DataSearch());
                      }),
                ],
                backgroundColor:const Color.fromARGB(255, 28, 184, 145), //const Color.fromARGB(255, 47, 62, 82) //
              ),
              drawer: SideDrawer(),
              backgroundColor: const Color.fromARGB(255, 218, 218, 218),//const Color.fromARGB(255, 47, 62, 82),
              body: GridView.count(
                  crossAxisCount: 2,
                  children: List.generate(
                    snapshot.data!.length,
                    (index) {
                      return ProductTile(snapshot.data![index], context);
                    },
                  )),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CartScreen()));
                },
                backgroundColor: const Color.fromARGB(255, 28, 184, 145),
                child: const Icon(Icons.shopping_cart),
              ),
            );
          } else {
            return Container();
          }
        });
  }
}
