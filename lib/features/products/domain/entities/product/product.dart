
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product.freezed.dart';
@Freezed()
class Product with _$Product {
  factory Product({
    required int id,
    required int catId,
    required String name,
    required String description,
    required String image,
    required double price,
    required double discount,
    required bool isAvailable,
}) = _Product ;
}