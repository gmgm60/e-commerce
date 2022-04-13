// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchants_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MerchantModel _$MerchantModelFromJson(Map<String, dynamic> json) =>
    MerchantModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => MerchantData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MerchantModelToJson(MerchantModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

MerchantData _$MerchantDataFromJson(Map<String, dynamic> json) => MerchantData(
      id: json['id'] as int?,
      merchantName: json['merchant_name'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MerchantDataToJson(MerchantData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'merchant_name': instance.merchantName,
      'phone': instance.phone,
      'address': instance.address,
      'products': instance.products,
    };