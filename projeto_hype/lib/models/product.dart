import 'package:projeto_hype/datas/product_data.dart';

class Product {

  Future<List<ProductData>> getProducts()
  async {
    List<ProductData> productList = [];
    ProductData productData = ProductData();

    //Apenas para teste até construir api
    productData.id = 1;
    productData.description = "O notebook gamer Avell Titanium G1513 MX tem aparência robusta e é encontrado em muitas variações no site da fabricante. A versão de maior performance vem equipada com processador Intel Core i7 7700HQ com oito núcleos, que pode atingir a frequência de 3.8 GHz, e chip gráfico Nvidia Geforce 1050 Ti. O modelo pode ser configurado com 16 ou 32 GB Memória DDR4, vem com disco rígido de 1 TB e 8GB SSD e tela de 15,6 polegadas IPS com resolução Full HD. O preço na loja oficial da Avell pode variar entre R\$ 5.777 e R\$ 7.143, dependendo da sua configuração de hardware.";
    productData.name = "Notebook Gamer";
    productData.price = 3699.90;
    productData.images = ["https://m.media-amazon.com/images/I/51WqIqjSOxL._AC_SY450_.jpg","https://a-static.mlcdn.com.br/800x560/notebook-gamer-acer-nitro-5-intel-core-i5-8gb-1tb-hd-256gb-ssd-nvidia-gtx-1650-4gb-windows-11/magazineluiza/234883900/37b44e63e642694b979612ea5b1dbb00.jpg","https://s2.glbimg.com/w_WCQg3av_iLssGhoIXrWFZzOGo=/0x0:695x521/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2017/b/P/KKJKi6QgSqMUYZeRgu9g/g1513-mxti-avell.jpg"];
    productList.add(productData);
    productData = ProductData();
    productData.id = 2;
    productData.description = "A História do Brasil é dividida, consensualmente e para fins didáticos, em três períodos principais: Período Colonial, Período Imperial e Período Republicano. Entretanto, tais divisões existem apenas para organizar esquematicamente os principais conteúdos sobre a formação do Brasil, tendo como ponto de partida o ano do descobrimento, isto é, 1500. Entretanto, é sabido que, no território em que se “formou o Brasil”, havia, antes, várias tribos nativas com aspectos culturais muito particulares. Mesmo antes da formação dessas tribos, houve também povos primitivos que deixaram os vestígios de sua cultura em vários lugares do território brasileiro (Veja Pré-história brasileira) há milhares de anos.A esse período da História do Brasil cujo tema central é o estudo dos povos nativos, isto é, dos povos indígenas, dá-se o nome de Período Pré-Cabralino. Essa nomenclatura faz referência a Pedro Álvares Cabral, cuja chegada em terras brasileiras é considerada o marco inaugural da História do Brasil. A partir de então, de 1500 em diante, sobretudo a partir da década de 1530, teve início a fase do Brasil Colônia.Veja mais sobre 'História do Brasil' em: https://brasilescola.uol.com.br/historiab";
    productData.name = "Camisa Manga Curta";
    productData.price = 25.69;
    productData.images = ["https://aramismenswear.vtexassets.com/arquivos/ids/897944/MC060103_148_1-CAMISA-SLIM-TRICOLINE-FIL-A-FIL--MO-.jpg?v=637908423722700000","https://static.riachuelo.com.br/RCHLO/13063120007/portrait/c417ee25af5fbb944eb8bfe764eb9745c6f85649.jpg?imwidth=700","https://d3ugyf2ht6aenh.cloudfront.net/stores/943/503/products/mc-11-495102bf30bc7e89e615781463948297-1024-1024.jpg"];
    productList.add(productData);
    await Future.delayed(const Duration(seconds: 1));
    //Apenas para teste até construir api

    return productList;
  }

}