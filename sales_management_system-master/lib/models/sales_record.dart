import 'customer.dart';
import 'product.dart';

class SalesRecord {
  Customer customer;
  Product product;
  int quantity;
  double totalPrice;
  DateTime date;

  SalesRecord(this.customer, this.product, this.quantity)
      : totalPrice = product.price * quantity,
        date = DateTime.now();

  @override
  String toString() {
    return "Sale: $customer bought $quantity x ${product.name} for $totalPrice on $date";
  }
}