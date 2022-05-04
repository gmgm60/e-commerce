
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_model.freezed.dart';
part 'product_model.g.dart';
@Freezed()
class ProductModel with _$ProductModel {

  factory ProductModel({
    required int id,
    @JsonKey(name: "category_id")
    @Default(1) int catId,
    required String name,
    required String description,
    required String image,
    required double price,
    @Default(0) double discount,
    @JsonKey(name: "quantity")
    @Default(0) int quantity,
  }) = _ProductModel ;
  factory ProductModel.fromJson(Map<String,dynamic> json) => _$ProductModelFromJson(json) ;
}