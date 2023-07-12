abstract class ProductInterface {
  int computePrice();
}

class Product implements ProductInterface {
  final int _price;
  Product({required int price}) : _price = price;
  @override
  int computePrice() {
    return _price;
  }
}

class Box implements ProductInterface {
  final List<ProductInterface> _products;

  Box({required List<ProductInterface> products}) : _products = products;

  @override
  int computePrice() {
    int sum = 0;
    for (final product in _products) {
      sum += product.computePrice();
    }
    return sum;
  }

  void addProduct(ProductInterface product) {
    _products.add(product);
  }
}
