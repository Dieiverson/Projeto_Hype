import 'package:flutter/material.dart';
import '../models/cart.dart';

class PriceTile extends StatelessWidget {
  const PriceTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(padding: EdgeInsets.all(10),child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 15,),
        const Text(
          "Resumo do pedido",
          textAlign: TextAlign.start,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 12.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Subtotal: "),
            Text("R\$${Cart().getTotal().toStringAsFixed(2)}")
          ],
        ),
        const Divider(),
        ElevatedButton(
            onPressed: () {
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 28, 184, 145))),
            child: const Text(
              "Finalizar Pedido",
              style: TextStyle(color: Colors.white),
            ))
      ],
    ));
  }
}
