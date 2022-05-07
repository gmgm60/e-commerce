// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrdersModel _$OrdersModelFromJson(Map<String, dynamic> json) => OrdersModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => OrderData.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$OrdersModelToJson(OrdersModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

OrderData _$OrderDataFromJson(Map<String, dynamic> json) => OrderData(
      id: json['id'] as int,
      productId: json['product_id'] as int,
      orderId: json['order_id'] as int,
      productQuantity: json['product_quantity'] as int,
      price: json['price'] as int,
      totalPrice: json['total_price'] as int,
      orders: Orders.fromJson(json['orders'] as Map<String, dynamic>),
      products:
          OrderProducts.fromJson(json['products'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderDataToJson(OrderData instance) => <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'order_id': instance.orderId,
      'product_quantity': instance.productQuantity,
      'price': instance.price,
      'total_price': instance.totalPrice,
      'orders': instance.orders,
      'products': instance.products,
    };

OrderProducts _$OrderProductsFromJson(Map<String, dynamic> json) =>
    OrderProducts(
      id: json['id'] as int,
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: json['price'] as int?,
    );

Map<String, dynamic> _$OrderProductsToJson(OrderProducts instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
    };

Orders _$OrdersFromJson(Map<String, dynamic> json) => Orders(
      id: json['id'] as int,
      totalPrice: json['total_price'] as String?,
      shippingAddress: json['shipping_address'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$OrdersToJson(Orders instance) => <String, dynamic>{
      'id': instance.id,
      'total_price': instance.totalPrice,
      'shipping_address': instance.shippingAddress,
      'status': instance.status,
    };
