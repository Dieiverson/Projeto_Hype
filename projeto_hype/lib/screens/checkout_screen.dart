import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import '../models/cart.dart';
import 'home_screen.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var uuid = Uuid();
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Checkout"),
          backgroundColor: const Color.fromARGB(255, 28, 184, 145),
        ),
        body: Container(
          child: Column(
            children: [
              const Text("Dados enviados servidor"),
              Text("ID Usuário: ${uuid.v1()}"),
              Text(jsonEncode(Cart().products)),
              ElevatedButton(onPressed: (){
                Cart().products = [];
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const HomeScreen()));
              }, child: const Text("Voltar ao Início"))
            ],
          ),
        ));
  }
}
