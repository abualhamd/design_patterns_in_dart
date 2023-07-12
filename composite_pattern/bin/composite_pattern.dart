import 'package:composite_pattern/models/product.dart';

void main() {
  Box box = Box(
    products: [
      Product(price: 5),
    ],
  );
  box.addProduct(Product(price: 3));

  ProductInterface product = Box(products: [
    Product(price: 10),
    box,
  ]);

  print(product.computePrice());
}
