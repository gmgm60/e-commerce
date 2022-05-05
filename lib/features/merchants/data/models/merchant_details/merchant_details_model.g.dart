// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MerchantDetailsModel _$MerchantDetailsModelFromJson(
        Map<String, dynamic> json) =>
    MerchantDetailsModel(
      data: (json['Data'] as List<dynamic>)
          .map((e) => MerchantDetailsData.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['Message'] as String?,
    );

Map<String, dynamic> _$MerchantDetailsModelToJson(
        MerchantDetailsModel instance) =>
    <String, dynamic>{
      'Data': instance.data,
      'Message': instance.message,
    };

MerchantDetailsData _$MerchantDetailsDataFromJson(Map<String, dynamic> json) =>
    MerchantDetailsData(
      id: json['id'] as int,
      name: json['name'] as String?,
      description: json['description'] as String?,
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MerchantDetailsDataToJson(
        MerchantDetailsData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'products': instance.products,
    };
