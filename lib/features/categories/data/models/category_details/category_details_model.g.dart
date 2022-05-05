// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryDetailsModel _$CategoryDetailsModelFromJson(
        Map<String, dynamic> json) =>
    CategoryDetailsModel(
      data: (json['Data'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['Message'] as String?,
    );

Map<String, dynamic> _$CategoryDetailsModelToJson(
        CategoryDetailsModel instance) =>
    <String, dynamic>{
      'Data': instance.data,
      'Message': instance.message,
    };
