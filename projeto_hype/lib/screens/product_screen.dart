import 'dart:math';

import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/material.dart';
import 'package:projeto_hype/datas/cart_product.dart';
import 'package:projeto_hype/datas/product_data.dart';
import 'package:projeto_hype/models/cart.dart';
import 'package:projeto_hype/models/favorite.dart';
import 'package:projeto_hype/screens/cart_screen.dart';

class ProductScreen extends StatefulWidget {
  ProductData productData;
  ProductScreen(this.productData, {super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState(productData);
}

class _ProductScreenState extends State<ProductScreen> {
  ProductData productData;
  _ProductScreenState(this.productData);
  @override
  Widget build(BuildContext context) {
    var rng = Random();
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 28, 184, 145),
          title: Row(
            children: [
              Image.asset("images/logo_green.jpg", height: 55),
              const Text("Ecommerce Acme"),
            ],
          ),
          actions: [
            Padding(
                padding: const EdgeInsets.all(10),
                child: GestureDetector(
                  child: Icon(
                      !Favorite().getFavorites().contains(productData.id)
                          ? Icons.favorite_border
                          : Icons.favorite),
                  onTap: () {
                    setState(() {
                      Favorite().toggleFavorite(productData.id);
                    });
                  },
                ))
          ]),
      body: Padding(
        padding: EdgeInsets.only(top: 15),
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Card(
                      child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: CarouselImages(
                      scaleFactor: 0.6,
                      listImages: productData.images,
                      height: 180.0,
                      borderRadius: 15.0,
                      cachedNetworkImage: true,
                      verticalAlignment: Alignment.center,
                      onTap: (index) {
                        print('clicou no index $index');
                      },
                    ),
                  )),
                ),
               Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            productData.name,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children:  [
                              const Icon(Icons.star,color: Colors.amber,size: 18,),
                              const Icon(Icons.star,color: Colors.amber,size: 18,),
                              const Icon(Icons.star,color: Colors.amber,size: 18,),
                              const Icon(Icons.star,color: Colors.amber,size: 18,),
                              const Icon(Icons.star,color: Colors.amber,size: 18,),
                              Text(rng.nextInt(800).toString(),style: TextStyle(color: Colors.black,fontSize: 11),)
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Text("De R\$ ${(productData.price+6.87).toStringAsFixed(2)}",
                              style: const TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: Color.fromARGB(255, 255, 70, 70),
                                  fontSize: 15)),
                          Text("Por R\$ ${productData.price.toStringAsFixed(2)}",
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 28, 184, 145),
                                  fontSize: 19,fontWeight: FontWeight.bold)),
                          const SizedBox(height: 20,),
                          const Text(
                           "Descrição:",
                            style:  TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(productData.description),
                        ],
                      )),
                ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 28, 184, 145)),),
                    onPressed: () {
                      Cart().addCartItem(CartProduct(productData));
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CartScreen()));
                    },
                    child: const Text("Adicionar ao Carrinho"))
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const CartScreen()));
        },
        backgroundColor: const Color.fromARGB(255, 28, 184, 145),
        child: const Icon(Icons.shopping_cart),
      ),
    );
  }
}
