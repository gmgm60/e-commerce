import 'package:ecommerce/features/cart/data/models/cart_item_model/cart_item_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_response_model.freezed.dart';
part 'cart_response_model.g.dart';

@Freezed()
class CartResponseModel with _$CartResponseModel {
  factory CartResponseModel({
    required List<CartItemModel> data,
    // ignore: invalid_annotation_target
    @JsonKey(name: "Message") required String message,
  }) = _CartResponseModel;

  factory CartResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CartResponseModelFromJson(json);
}
