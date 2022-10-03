import '../datas/cart_product.dart';

List<CartProduct> products = [];

class Cart {

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
    products.add(cartProduct);
  }

  void removeCartItem(CartProduct cartProduct)
  {
    products.remove(cartProduct);
  }
}