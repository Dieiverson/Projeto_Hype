import 'package:flutter/material.dart';
import '../datas/product_data.dart';

class SearchTile extends StatelessWidget {
  dynamic object;
  SearchTile(this.object, {super.key});

  @override
  Widget build(BuildContext context) {
    ProductData product = object;
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Container(
          width: 180,
          height: 120,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            image: DecorationImage(
                fit: BoxFit.fill, image: NetworkImage(product.images[0])),
          )),
    );
  }
}
