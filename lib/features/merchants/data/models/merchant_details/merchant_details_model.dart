import 'package:ecommerce/features/products/data/models/product_model/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'merchant_details_model.g.dart';

@JsonSerializable()
class MerchantDetailsModel {

  // todo data must not be list it is a single object
  @JsonKey(name: 'Data')
  final List<MerchantDetailsData> data;
  @JsonKey(name: 'Message')
  final String? message;

  MerchantDetailsModel({
    required this.data,
    this.message,
  });

  factory MerchantDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$MerchantDetailsModelFromJson(json);

  Map<String, dynamic> toJson() => _$MerchantDetailsModelToJson(this);
}

@JsonSerializable()
class MerchantDetailsData {
  final int id;
  final String? name;
  final String? description;
  final List<ProductModel> products;

  MerchantDetailsData({
    required this.id,
    this.name,
    this.description,
    required this.products,
  });

  factory MerchantDetailsData.fromJson(Map<String, dynamic> json) =>
      _$MerchantDetailsDataFromJson(json);

  Map<String, dynamic> toJson() => _$MerchantDetailsDataToJson(this);
}
