import 'dart:io';
import 'models/product.dart';
import 'models/sales_record.dart';
import 'models/customer.dart';
import 'services/sales_service.dart';

void customerMenu(List<Product> products, List<SalesRecord> sales) {
  SalesService salesService = SalesService();
  salesService.products = products;
  salesService.sales = sales; 

  while (true) {
    print("\nCustomer Panel");
    print("1. View available products");
    print("2. Buy a product");
    print("3. Exit");

    stdout.write("Select an option: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1': // عرض المنتجات المتاحة
        List<Product> availableProducts = salesService.getAvailableProducts();
        if (availableProducts.isEmpty) {
          print("No products available.");
        } else {
          for (var product in availableProducts) {
            print(product);
          }
        }
        break;

      case '2': // شراء منتج
        stdout.write("Enter product name to buy: ");
        String productName = stdin.readLineSync()!;
        stdout.write("Enter quantity to buy: ");
        int quantity = int.parse(stdin.readLineSync()!);

        try {
          Product product = salesService.findProductByName(productName)!;
          Customer customer = Customer("Guest", "1234567890"); // عميل مؤقت
          salesService.sellProduct(customer, product, quantity);
        } catch (e) {
          print("Product not found or not enough stock.");
        }
        break;

      case '3': 
        print("Exiting Customer Panel...");
        return;

      default:
        print("Invalid option.");
    }
  }
}