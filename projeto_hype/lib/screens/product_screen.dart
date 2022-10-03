import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/material.dart';
import 'package:projeto_hype/datas/product_data.dart';
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
    return Scaffold(
        appBar: AppBar(title: const Text("Ecommerce Hype")),
        body: ListView(
          children: [
            Column(
              children: [
                CarouselImages(
                  scaleFactor: 0.6,
                  listImages: productData.images,
                  height: 300.0,
                  borderRadius: 30.0,
                  cachedNetworkImage: true,
                  verticalAlignment: Alignment.topCenter,
                  onTap: (index) {
                    print('Tapped on page $index');
                  },
                ),
                Text(productData.name),
                Text(productData.price.toString()),
                Text(productData.description),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CartScreen()));
                    }, child: Text("Adicionar ao Carrinho"))
              ],
            )
          ],
        ));
  }
}
