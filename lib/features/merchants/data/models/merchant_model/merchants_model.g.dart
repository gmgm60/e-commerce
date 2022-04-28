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
    );

Map<String, dynamic> _$MerchantModelToJson(MerchantModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

MerchantData _$MerchantDataFromJson(Map<String, dynamic> json) => MerchantData(
      id: json['id'] as int,
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$MerchantDataToJson(MerchantData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };
