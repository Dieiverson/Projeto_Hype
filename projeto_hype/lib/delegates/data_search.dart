import 'dart:math';

import 'package:flutter/material.dart';

import '../datas/product_data.dart';
import '../models/product.dart';
import '../screens/product_screen.dart';
import '../tiles/search_tile.dart';


class DataSearch extends SearchDelegate<String> {
  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      primaryColor: Colors.red,
      scaffoldBackgroundColor: Colors.white,
      hintColor: Colors.white,
      textTheme: const TextTheme(headline6: TextStyle(color: Colors.white)),
    );
  }

  @override
  String get searchFieldLabel => 'Pesquisar';

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, "");
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    Future.delayed(Duration.zero).then((value) => close(context, query));
    return Container(color: Colors.white,);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    var rng = Random();
    if (query.isEmpty) {
      return Container();
    } else {
      return FutureBuilder<List<dynamic>>(
          future: suggestions(query),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return ListView.builder(
                itemBuilder: (context, index) {
                    ProductData product = snapshot.data![index];
                    return ListTile(
                      title: Row(children: [
                        SearchTile(product),
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(product.name,
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold))),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:  [
                                    const Icon(Icons.star,color: Colors.amber,size: 16,),
                                    const Icon(Icons.star,color: Colors.amber,size: 16,),
                                    const Icon(Icons.star,color: Colors.amber,size: 16,),
                                    const Icon(Icons.star,color: Colors.amber,size: 16,),
                                    const Icon(Icons.star,color: Colors.amber,size: 16,),
                                    Text("(${rng.nextInt(800).toString()})",style:const TextStyle(color: Colors.black,fontSize: 10),)
                                  ],
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("R\$ ${product.price.toString()}",style: const TextStyle(color: Color.fromARGB(255, 28, 184, 145),fontSize: 12,fontWeight: FontWeight.bold),),)
                              ]),
                        ),
                      ]),
                      tileColor: Colors.white,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ProductScreen(product)));
                      },
                    );
                },
                itemCount: snapshot.data?.length,
              );
            }
          });
    }
  }

  Future<List<ProductData>> suggestions(String search) async {
     List<ProductData> resultsList = await Product().getProducts();

     return resultsList.where(
            (x) => x.name.toLowerCase().contains(search.toLowerCase())
    ).toList();
  }
}
