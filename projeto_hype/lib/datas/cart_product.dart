import 'package:projeto_hype/datas/product_data.dart';

class CartProduct {
  //late String cid;
  //late String pid; //Id produto
  late ProductData productData;
  late int quantity;
  CartProduct(this.productData, {this.quantity = 1});

  Map<String, dynamic> toJson() => {
    'productData': productData.toJson(),
    'quantity': quantity.toString(),
  };

}