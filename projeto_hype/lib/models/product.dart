import 'dart:convert';

import 'package:projeto_hype/datas/product_data.dart';
import 'package:http/http.dart' as http;

class Product {
  static final Product _product = Product._internal();
  factory Product() {
    return _product;
  }
  Product._internal();

  List<ProductData> _productList = [];
  var url = Uri.http('dieiverson.ddns.net','/ecommerce/Produtos');
  Future<List<ProductData>> getProducts()
  async {
    if(_productList.isNotEmpty){
      return _productList;
    }
    var response              = await http.get(url);
    Map data  = jsonDecode(response.body);
    _productList = productsFromJson(data);
    return _productList;
  }

  List<ProductData> productsFromJson(Map<dynamic, dynamic> json)
  {
      ProductData product = ProductData();
      List<ProductData> products = [];
      for (int i = 0; i < json["result"].length; i++) {
        print(json["result"][i]["pid"]);
        print(i);
        print("até aqui");
        product = ProductData();
        product.id = json["result"][i]["pid"];
        product.price =  double.parse(json["result"][i]["price"].toString());
        product.description = json["result"][i]["description"] ?? "";
        product.name = json["result"][i]["name"] ?? "";
        product.images = [json["result"][i]["images"][0] ?? "",json["result"][i]["images"][1] ?? ""];
        print(product);
        products.add(product);
      }
      return products;
  }

  ProductData getProductById(int id)
  {
    print(_productList);
    return _productList.firstWhere((element) => element.id == id);
  }

}