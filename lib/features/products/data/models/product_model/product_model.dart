
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_model.freezed.dart';
part 'product_model.g.dart';
@Freezed()
class ProductModel with _$ProductModel {

  factory ProductModel({
    required int id,
    @JsonKey(name: "cat_id")
    required int catId,
    required String name,
    required String description,
    required String image,
    required double price,
    @JsonKey(name: "is_available")
    required bool isAvailable,
  }) = _ProductModel ;
  factory ProductModel.fromJson(Map<String,dynamic> json) => _$ProductModelFromJson(json) ;
}