import '../datas/cart_product.dart';

class Cart {
  List<CartProduct> products = [];
  //Singleton
  static final Cart _cart = Cart._internal();
  factory Cart() {
    return _cart;
  }
  Cart._internal();

  void decProduct(CartProduct cartProduct)
  {
    cartProduct.quantity--;
  }

  void incProduct(CartProduct cartProduct)
  {
    cartProduct.quantity++;
  }

  void addCartItem(CartProduct cartProduct)
  {
    bool contain = products.any((item) => item.productData.id == cartProduct.productData.id);
    if(!contain)
    {
      products.add(cartProduct);
    }
  }

  double getTotal()
  {
    double total = 0;
    for (var element in products)  {
      total += element.productData.price * element.quantity;
    }
    return total;
  }

  void removeCartItem(CartProduct cartProduct)
  {
    products.remove(cartProduct);
  }

  List<CartProduct> getItems()
  {
    return products;
  }




}