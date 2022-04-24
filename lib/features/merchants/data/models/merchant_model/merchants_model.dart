import 'package:ecommerce/features/products/data/models/product_model/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'merchants_model.g.dart';

@JsonSerializable()
class MerchantModel {
  final List<MerchantData> data;

  MerchantModel({required this.data});

  factory MerchantModel.fromJson(Map<String, dynamic> json) =>
      _$MerchantModelFromJson(json);

  Map<String, dynamic> toJson() => _$MerchantModelToJson(this);
}

@JsonSerializable()
class MerchantData {
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'merchant_name')
  final String? merchantName;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'products')
  final List<ProductModel>? products;
  @JsonKey(name: 'rating')
  final double? rating;

  MerchantData({
    required this.id,
    required this.merchantName,
    required this.phone,
    required this.address,
    required this.products,
    required this.rating,
  });

  factory MerchantData.fromJson(Map<String, dynamic> json) =>
      _$MerchantDataFromJson(json);

  Map<String, dynamic> toJson() => _$MerchantDataToJson(this);
}
