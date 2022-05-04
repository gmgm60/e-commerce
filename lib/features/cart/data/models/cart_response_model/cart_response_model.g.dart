// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartResponseModel _$$_CartResponseModelFromJson(Map<String, dynamic> json) =>
    _$_CartResponseModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => CartItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['Message'] as String,
    );

Map<String, dynamic> _$$_CartResponseModelToJson(
        _$_CartResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'Message': instance.message,
    };
