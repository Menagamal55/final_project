import 'dart:io';
import 'models/product.dart';
import 'models/sales_record.dart';
import 'services/sales_service.dart';

void adminMenu(List<Product> products, List<SalesRecord> sales) {
  SalesService salesService = SalesService();
  salesService.products = products; 
  salesService.sales = sales; 

  while (true) {
    print("\nAdmin Panel");
    print("1. Add a new product");
    print("2. Remove a product");
    print("3. Restock a product");
    print("4. View total revenue");
    print("5. Exit");

    stdout.write("Select an option: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1': // إضافة منتج جديد
        stdout.write("Enter product name: ");
        String name = stdin.readLineSync()!;
        stdout.write("Enter product price: ");
        double price = double.parse(stdin.readLineSync()!);
        stdout.write("Enter initial stock: ");
        int stock = int.parse(stdin.readLineSync()!);

        Product newProduct = Product(name, price, stock);
        salesService.addProduct(newProduct);
        print("Product added successfully.");
        break;

      case '2': // حذف منتج
        stdout.write("Enter product name to remove: ");
        String productName = stdin.readLineSync()!;
        salesService.removeProduct(productName);
        break;

      case '3': // إعادة تخزين منتج
        stdout.write("Enter product name to restock: ");
        String productName = stdin.readLineSync()!;
        stdout.write("Enter quantity to restock: ");
        int quantity = int.parse(stdin.readLineSync()!);

        try {
          Product product = salesService.findProductByName(productName)!;
          salesService.restockProduct(product, quantity);
        } catch (e) {
          print("Product not found.");
        }
        break;

      case '4': // عرض الإيرادات بتاعته كلها 
        double totalRevenue = salesService.getTotalRevenue();
        print("Total Revenue: \$${totalRevenue.toStringAsFixed(2)}");
        break;

      case '5': // 
        print("Exiting Admin Panel...");
        return;

      default:
        print("Invalid option.");
    }
  }
}