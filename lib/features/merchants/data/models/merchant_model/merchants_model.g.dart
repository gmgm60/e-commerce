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
      message: json['message'] as String,
      status: json['status'] as int,
    );

Map<String, dynamic> _$MerchantModelToJson(MerchantModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status': instance.status,
    };

MerchantData _$MerchantDataFromJson(Map<String, dynamic> json) => MerchantData(
      id: json['id'] as int?,
      merchantName: json['name'] as String?,
      description: json['description'] as String?,
      phone: json['phone'] as String? ?? '20125415',
      address: json['address'] as String? ?? 'merchant address',
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      rating: (json['rating'] as num?)?.toDouble() ?? 0.25,
    );

Map<String, dynamic> _$MerchantDataToJson(MerchantData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.merchantName,
      'description': instance.description,
      'phone': instance.phone,
      'address': instance.address,
      'products': instance.products,
      'rating': instance.rating,
    };
