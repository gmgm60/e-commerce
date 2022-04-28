import 'package:ecommerce/features/products/domain/entities/product/product.dart';

class Merchant {
  final int id;
  final String name;
  final String description;
  final String phone;
  final String address;
  final double rating;
  final List<Product> products;

  Merchant({
    required this.id,
    required this.name,
    required this.description,
    required this.phone,
    required this.address,
    required this.rating,
    required this.products,
  });
}
