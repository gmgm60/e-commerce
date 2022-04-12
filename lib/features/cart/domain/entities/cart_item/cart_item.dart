import 'package:freezed_annotation/freezed_annotation.dart';
part 'cart_item.freezed.dart';

@Freezed()
class CartItem with _$CartItem {
  factory CartItem({
  required int id,
  required int count,
  }) = _CartItem;
}
