import 'package:flutter/material.dart';
import 'package:projeto_hype/datas/cart_product.dart';

import '../tiles/cart_tile.dart';
 class CartScreen extends StatefulWidget {
   const CartScreen({Key? key}) : super(key: key);
 
   @override
   State<CartScreen> createState() => _CartScreenState();
 }
 
 class _CartScreenState extends State<CartScreen> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: const Text("Ecommerce Hype")),
       body: ListView(
         children: [
           CartTile(CartProduct()),
           CartTile(CartProduct()),
           ElevatedButton(onPressed: (){}, child: Text("Fazer Checkout"))
         ],
       ),
     );
   }
 }
 