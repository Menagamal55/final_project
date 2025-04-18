import '../models/product.dart';
import '../models/customer.dart';
import '../models/sales_record.dart';

class SalesService {
  List<Product> products = [];
  List<SalesRecord> sales = [];

  void addProduct(Product product) {
    products.add(product);
  }

  List<Product> getAvailableProducts() {
    return products.where((product) => product.stock > 0).toList();
  }

  void sellProduct(Customer customer, Product product, int quantity) {
    if (product.stock >= quantity) {
      product.stock -= quantity;
      SalesRecord sale = SalesRecord(customer, product, quantity);
      sales.add(sale);
      print("Sale completed: ${sale}");
    } else {
      print("Not enough stock available for ${product.name}.");
    }
  }

  void updateProductPrice(Product product, double newPrice) {
    product.price = newPrice;
    print("Price updated: ${product.name} now costs \$${product.price}");
  }

  void restockProduct(Product product, int quantity) {
    product.stock += quantity;
    print("Restocked: ${product.name} now has ${product.stock} in stock");
  }

  Product? findProductByName(String productName) {
    return products.firstWhere(
      (product) => product.name.toLowerCase() == productName.toLowerCase(),
      orElse: () => throw Exception("Product not found"),
    );
  }

  double getTotalRevenue() {
    return sales.fold(0, (sum, sale) => sum + sale.totalPrice);
  }

  void removeProduct(String productName) {
    products.removeWhere((product) => product.name.toLowerCase() == productName.toLowerCase());
    print("Product removed: $productName");
  }
}