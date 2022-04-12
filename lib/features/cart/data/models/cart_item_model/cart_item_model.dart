import 'package:freezed_annotation/freezed_annotation.dart';
part 'cart_item_model.freezed.dart';
part 'cart_item_model.g.dart';

@Freezed()
class CartItemModel with _$CartItemModel{
  factory CartItemModel({
    required int id,
    required int count,
}) = _CartItemModel;
  factory CartItemModel.fromJson(Map<String,dynamic> json) => _$CartItemModelFromJson(json);
}