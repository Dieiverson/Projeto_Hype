class Favorite{

  List<int> _favs = [];
  //Singleton
  static final Favorite _favorite = Favorite._internal();
  factory Favorite() {
    return _favorite;
  }
  Favorite._internal();

  void toggleFavorite(int productId)
  {
    if(!_favs.contains(productId)) {
      _favs.add(productId);
    } else {
      _favs.remove(productId);
    }
  }

  List<int> getFavorites()
  {
    return _favs;
  }

}