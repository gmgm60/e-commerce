import 'package:ecommerce/features/products/data/models/product_model/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_details_model.g.dart';

@JsonSerializable()
class CategoryDetailsModel {
  @JsonKey(name: 'Data')
  final List<ProductModel> data;
  @JsonKey(name: 'Message')
  final String? message;

  CategoryDetailsModel({
    required this.data,
    this.message,
  });

  factory CategoryDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryDetailsModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryDetailsModelToJson(this);
}
