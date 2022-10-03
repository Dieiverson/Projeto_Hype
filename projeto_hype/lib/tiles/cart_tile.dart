import 'package:flutter/material.dart';

import '../datas/cart_product.dart';

class CartTile extends StatelessWidget {
  final CartProduct cartProduct;
  const CartTile(this.cartProduct, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 120.0,
          padding: EdgeInsets.all(10.0),
          child: Image.network(
            "https://static.todamateria.com.br/upload/ba/nd/bandeira-do-brasil-og.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Expanded(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Título Produto",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17.0),
                  ),
                  Text(
                    "R\$: Preço produto",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(icon: Icon(Icons.remove,color: Theme.of(context).primaryColor), onPressed: (){}),
                      Text("quantidade"),
                      IconButton(icon: Icon(Icons.add,color: Theme.of(context).primaryColor,), onPressed: () {
                      }),
                      ElevatedButton(
                          onPressed: () {
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
    );
  }
}
