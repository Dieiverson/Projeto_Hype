import 'package:flutter/material.dart';
import 'package:projeto_hype/datas/product_data.dart';

import '../screens/product_screen.dart';
class ProductTile extends StatelessWidget {
  ProductData productData;
  BuildContext ctx;

  ProductTile(this.productData,this.ctx, {super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
        onTap: () {
          Navigator.of(ctx).push(MaterialPageRoute(
              builder: (ctx) => ProductScreen(productData)));
        },
        child: Card(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                children: [
                  Image.network(
                   productData.images[0],
                    fit: BoxFit.cover,
                    width: 150,
                  ),
                  Text(productData.name),
                  Text(productData.price.toString()),
                ],
              ),
            )));
  }
}
