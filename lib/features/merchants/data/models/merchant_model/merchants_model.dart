import 'package:ecommerce/features/products/data/models/product_model/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'merchants_model.g.dart';

@JsonSerializable()
class MerchantModel {
  final List<MerchantData> data;
  final String message;
  final int status;

  MerchantModel({
    required this.data,
    required this.message,
    required this.status,
  });

  factory MerchantModel.fromJson(Map<String, dynamic> json) =>
      _$MerchantModelFromJson(json);

  Map<String, dynamic> toJson() => _$MerchantModelToJson(this);
}

@JsonSerializable()
class MerchantData {
  final int? id;
  @JsonKey(name: 'name')
  final String? merchantName;
  final String? description;
  final String? phone;
  final String? address;
  @JsonKey(name: 'products')
  final List<ProductModel>? products;
  final double? rating;

  MerchantData({
    required this.id,
    required this.merchantName,
    required this.description,
    this.phone = '20125415',
    this.address = 'merchant address',
    required this.products,
    this.rating = .25,
  });

  factory MerchantData.fromJson(Map<String, dynamic> json) =>
      _$MerchantDataFromJson(json);

  Map<String, dynamic> toJson() => _$MerchantDataToJson(this);
}
