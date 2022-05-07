import 'package:ecommerce/features/products/domain/entities/product/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cart_item.freezed.dart';

@Freezed()
class CartItem with _$CartItem {
  factory CartItem({
    required Product product,
    required int count,
  }) = _CartItem;
}
