import 'package:ecommerce/features/products/domain/entities/product/product.dart';

class Order {
  final int id;
  final int customerId;
  final String address;
  final List<Product> products;
  final String orderStatus;
  final String totalPrice;

  const Order({
    required this.id,
    required this.customerId,
    required this.address,
    required this.products,
    required this.orderStatus,
    required this.totalPrice,
  });
}
