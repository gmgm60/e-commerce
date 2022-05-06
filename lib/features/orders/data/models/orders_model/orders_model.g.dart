// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrdersModel _$OrdersModelFromJson(Map<String, dynamic> json) => OrdersModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => OrderData.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String,
    );

Map<String, dynamic> _$OrdersModelToJson(OrdersModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

OrderData _$OrderDataFromJson(Map<String, dynamic> json) => OrderData();

Map<String, dynamic> _$OrderDataToJson(OrderData instance) =>
    <String, dynamic>{};
