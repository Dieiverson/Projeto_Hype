import 'package:projeto_hype/datas/product_data.dart';

class Product {

  Future<List<ProductData>> getProducts()
  async {
    List<ProductData> productList = [];
    ProductData productData = ProductData();

    //Apenas para teste até construir api
    productData.id = 1;
    productData.description = "Produto x ua asd aqui vai a descricao";
    productData.name = "Camisa azul pano";
    productData.price = 12.69;
    productData.images = ["https://static.todamateria.com.br/upload/ba/nd/bandeira-do-brasil-og.jpg","https://http2.mlstatic.com/D_NQ_NP_912163-MLB46132557852_052021-O.jpg"];
    productList.add(productData);
    productData = ProductData();
    productData.id = 1;
    productData.description = "descriãp do produto xalskdj lkasjd";
    productData.name = "Blusa hrfc";
    productData.price = 25.69;
    productData.images = ["https://static.todamateria.com.br/upload/ba/nd/bandeira-do-brasil-og.jpg","https://http2.mlstatic.com/D_NQ_NP_912163-MLB46132557852_052021-O.jpg"];
    productList.add(productData);
    await Future.delayed(const Duration(seconds: 1));
    //Apenas para teste até construir api

    return productList;
  }

}