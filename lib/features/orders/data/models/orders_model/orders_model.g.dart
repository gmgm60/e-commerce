// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrdersModel _$OrdersModelFromJson(Map<String, dynamic> json) => OrdersModel(
      order: OrderModelData.fromJson(json['order'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

Map<String, dynamic> _$OrdersModelToJson(OrdersModel instance) =>
    <String, dynamic>{
      'order': instance.order,
      'token': instance.token,
    };

OrderModelData _$OrderModelDataFromJson(Map<String, dynamic> json) =>
    OrderModelData(
      id: json['id'] as int,
      customerId: json['customer_id'] as int,
      address: json['address'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderModelDataToJson(OrderModelData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_id': instance.customerId,
      'address': instance.address,
      'products': instance.products,
    };
