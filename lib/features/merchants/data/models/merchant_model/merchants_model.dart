import 'package:ecommerce/features/products/data/models/product_model/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'merchants_model.g.dart';

@JsonSerializable()
class MerchantModel {
 List<MerchantData> data;

  MerchantModel({
    required this.data
  });

  factory MerchantModel.fromJson(Map<String, dynamic> json) =>
      _$MerchantModelFromJson(json);

  Map<String, dynamic> toJson() => _$MerchantModelToJson(this);
}


@JsonSerializable()
class MerchantData {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'merchant_name')
  String? merchantName;
  @JsonKey(name: 'phone')
  String? phone;
  @JsonKey(name: 'address')
  String? address;
  @JsonKey(name: 'products')
  List<ProductModel>? products;

  MerchantData({
    required this.id,
    required this.merchantName,
    required this.phone,
    required this.address,
    required this.products,
  });

  factory MerchantData.fromJson(Map<String, dynamic> json) =>
      _$MerchantDataFromJson(json);

  Map<String, dynamic> toJson() => _$MerchantDataToJson(this);
}
