import 'package:flutter/material.dart';
import '../datas/cart_product.dart';
import '../models/cart.dart';

class CartTile extends StatelessWidget {
  final CartProduct cartProduct;
  final Function() notifyParent;
  const CartTile(this.cartProduct, this.notifyParent, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 120.0,
            height: 120,
            padding: const EdgeInsets.all(10.0),
            child: Image.network(
              cartProduct.productData.images[0],
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
                  cartProduct.productData.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 17.0),
                ),
                Text(
                  "R\$: ${cartProduct.productData.price.toStringAsFixed(2)}",
                  style: const TextStyle(
                      color: Color.fromARGB(255, 28, 184, 145),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        icon: const Icon(Icons.remove,
                            color: Color.fromARGB(255, 28, 184, 145)),
                        onPressed: () {
                          Cart().decProduct(cartProduct);
                          notifyParent();
                        }),
                    Text(cartProduct.quantity.toString()),
                    IconButton(
                        icon: const Icon(Icons.add,
                            color: Color.fromARGB(255, 28, 184, 145)),
                        onPressed: () {
                          Cart().incProduct(cartProduct);
                          notifyParent();
                        }),
                    ElevatedButton(
                        onPressed: () {
                          cartProduct.quantity > 0
                              ? Cart().removeCartItem(cartProduct)
                              : null;
                          notifyParent();
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.transparent),
                            shadowColor: MaterialStateProperty.all<Color>(
                                Colors.transparent)),
                        child: Text(
                          "Remover",
                          style: TextStyle(color: Colors.grey[500]),
                        ))
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
