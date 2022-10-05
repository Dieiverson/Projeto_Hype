import 'package:flutter/material.dart';
import 'package:projeto_hype/datas/cart_product.dart';
import '../models/cart.dart';
import '../tiles/cart_tile.dart';
import '../tiles/price_tile.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    List<CartProduct> productList = Cart().products;
    print(Cart().getTotal().toStringAsFixed(2));
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Carrinho"),
          backgroundColor: const Color.fromARGB(
              255, 28, 184, 145),
        ),
        body: ListView(children: [
          Column(
            children: List.generate(productList.length, (index) {
              return CartTile(productList[index], refresh);
            }),
          ),
          PriceTile() //Não pode ser constante
        ]));
  }
}
