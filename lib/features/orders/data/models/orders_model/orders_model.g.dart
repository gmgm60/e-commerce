// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrdersModel _$OrdersModelFromJson(Map<String, dynamic> json) => OrdersModel(
      orderId: json['order_id'] as int,
      customerId: json['customer_id'] as int,
      address: json['address'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPrice: json['total_price'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$OrdersModelToJson(OrdersModel instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'customer_id': instance.customerId,
      'address': instance.address,
      'products': instance.products,
      'total_price': instance.totalPrice,
      'status': instance.status,
    };
