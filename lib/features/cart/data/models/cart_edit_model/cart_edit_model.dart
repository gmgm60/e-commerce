import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_edit_model.freezed.dart';
part 'cart_edit_model.g.dart';

@Freezed()
class CartEditModel with _$CartEditModel {
  factory CartEditModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: "product_id") required int productId,
    required int quantity,
  }) = _CartEditModel;

  factory CartEditModel.fromJson(Map<String, dynamic> json) =>
      _$CartEditModelFromJson(json);
}
