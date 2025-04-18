class Product {
  String name;
  double price;
  int stock;

  Product(this.name, this.price, this.stock);

  @override
  String toString() {
    return "$name - \$${price.toStringAsFixed(2)} - Stock: $stock";
  }
}