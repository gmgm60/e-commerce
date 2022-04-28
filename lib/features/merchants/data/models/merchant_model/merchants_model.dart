import 'package:freezed_annotation/freezed_annotation.dart';

part 'merchants_model.g.dart';

@JsonSerializable()
class MerchantModel {
  final List<MerchantData> data;
  final String message;

  MerchantModel({
    required this.data,
    required this.message,
  });

  factory MerchantModel.fromJson(Map<String, dynamic> json) =>
      _$MerchantModelFromJson(json);

  Map<String, dynamic> toJson() => _$MerchantModelToJson(this);
}

@JsonSerializable()
class MerchantData {
  final int id;
  final String? name;
  final String? description;

  // final String? phone;
  // final String? address;
  // final List<ProductModel>? products;
  // final double? rating;

  MerchantData({
    required this.id,
    required this.name,
    required this.description,
    // this.phone = '20125415',
    // this.address = 'merchant address',
    // this.rating = 2.5,
    // this.products
  });

  factory MerchantData.fromJson(Map<String, dynamic> json) =>
      _$MerchantDataFromJson(json);

  Map<String, dynamic> toJson() => _$MerchantDataToJson(this);
}
