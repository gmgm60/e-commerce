import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_edit.freezed.dart';

@Freezed()
class CartEdit with _$CartEdit {
  factory CartEdit({
    required int productId,
    required int quantity,
  }) = _CartEdit;
}
