import 'package:ecommerce/features/products/domain/entities/product/product.dart';

class Merchant {
  final String merchantName;
  final String phone;
  final String address;
  final double rating;
  final List<Product> products;

  Merchant(
      {required this.merchantName,
      required this.phone,
      required this.address,
      required this.rating,
      required this.products});
}
