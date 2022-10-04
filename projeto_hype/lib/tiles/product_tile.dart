import 'package:flutter/material.dart';
import 'package:projeto_hype/datas/product_data.dart';

import '../screens/product_screen.dart';

class ProductTile extends StatelessWidget {
  ProductData productData;
  BuildContext ctx;

  ProductTile(this.productData, this.ctx, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(ctx).push(
              MaterialPageRoute(builder: (ctx) => ProductScreen(productData)));
        },
        child: Padding(
          padding: const EdgeInsets.fromLTRB(5,10,5,10),
          child: Card(
              color: //const Color.fromARGB(100, 119, 120, 134),
              Color.fromARGB(255, 242, 242, 242),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 15),
                      child: Image.network(
                        productData.images[0],
                        fit: BoxFit.cover,
                        height: 90,
                      ),
                    ),
                    Text(productData.name,style: const TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
                    Text("R\$ ${productData.price.toString()}",style: const TextStyle(color: Color.fromARGB(255, 28, 184, 145),fontSize: 12,fontWeight: FontWeight.bold),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.star,color: Colors.amber,size: 14,),
                        Icon(Icons.star,color: Colors.amber,size: 14,),
                        Icon(Icons.star,color: Colors.amber,size: 14,),
                        Icon(Icons.star,color: Colors.amber,size: 14,),
                        Icon(Icons.star,color: Colors.amber,size: 14,),
                        Text("(168)",style: TextStyle(color: Colors.black,fontSize: 9),)
                      ],
                    )
                  ],
                ),
              )),
        ));
  }
}
