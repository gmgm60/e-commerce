import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@Freezed()
class Product with _$Product {
  Product._();

  factory Product({
    required int id,
    required int catId,
    required String name,
    required String description,
    required String image,
    required double price,
    required double discount,
    required int quantity,
  }) = _Product;

  double get newPrice {
    return price - discount;
  }

  int get percentage {
    return ((1 - (newPrice / price)) * 100).toInt();
  }
}
