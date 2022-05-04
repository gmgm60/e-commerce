import 'package:ecommerce/features/products/data/models/product_model/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cart_item_model.freezed.dart';
part 'cart_item_model.g.dart';

@Freezed()
class CartItemModel with _$CartItemModel{
  factory CartItemModel({
    @JsonKey(name: "product")
    required ProductModel productModel,
    required int quantity,
}) = _CartItemModel;
  factory CartItemModel.fromJson(Map<String,dynamic> json) => _$CartItemModelFromJson(json);
}