import 'dart:io';
import 'admin_menu.dart';
import 'customer_menu.dart';
import 'models/product.dart';
import 'models/sales_record.dart';

void main() {
  List<Product> products = []; //  المنتجات
  List<SalesRecord> sales = []; //  المبيعات

  while (true) {
    print("\nWelcome to Sales Management System");
    print("1. Admin Panel");
    print("2. Customer Panel");
    print("3. Exit");

    stdout.write("Select an option: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        adminMenu(products, sales); 
        break;
      case '2':
        customerMenu(products, sales); 
        break;
      case '3':
        print("Exiting...");
        return;
      default:
        print("Invalid option.");
    }
  }
}