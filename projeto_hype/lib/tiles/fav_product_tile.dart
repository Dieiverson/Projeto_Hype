import 'package:flutter/material.dart';
import '../datas/product_data.dart';
import '../screens/product_screen.dart';

class FavTile extends StatelessWidget {
  final ProductData _productData;
  final Function() notifyParent;
  const FavTile(this._productData, this.notifyParent, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) => ProductScreen(_productData)));
      },
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 120.0,
              height: 120,
              padding: const EdgeInsets.all(10.0),
              child: Image.network(
                _productData.images[0],
                fit: BoxFit.scaleDown,
              ),
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _productData.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 17.0),
                  ),
                  Text(
                    "R\$: ${_productData.price.toStringAsFixed(2)}",
                    style: const TextStyle(
                        color: Color.fromARGB(255, 28, 184, 145),
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
