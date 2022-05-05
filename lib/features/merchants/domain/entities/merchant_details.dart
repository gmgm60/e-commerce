import 'package:ecommerce/features/products/domain/entities/product/product.dart';

class MerchantDetails {
  final int id;
  final String name;
  final String description;
  final double rate;
  final List<Product> products;

  MerchantDetails({
    required this.id,
    required this.name,
    required this.description,
    required this.rate,
    required this.products,
  });
}
