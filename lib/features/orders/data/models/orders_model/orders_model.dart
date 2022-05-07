import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_model.g.dart';

@JsonSerializable()
class OrdersModel {
  final List<OrderData>? data;
  final String? message;

  OrdersModel({
    this.data,
    this.message,
  });

  factory OrdersModel.fromJson(Map<String, dynamic> json) =>
      _$OrdersModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrdersModelToJson(this);
}

@JsonSerializable()
class OrderData {
  final int id;
  @JsonKey(name: 'product_id')
  final int productId;
  @JsonKey(name: 'order_id')
  final int orderId;
  @JsonKey(name: 'product_quantity')
  final int productQuantity;
  final int price;
  @JsonKey(name: 'total_price')
  final int totalPrice;
  final Orders orders;
  final OrderProducts products;

  OrderData({
    required this.id,
    required this.productId,
    required this.orderId,
    required this.productQuantity,
    required this.price,
    required this.totalPrice,
    required this.orders,
    required this.products,
  });

  factory OrderData.fromJson(Map<String, dynamic> json) =>
      _$OrderDataFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDataToJson(this);
}

@JsonSerializable()
class OrderProducts {
  final int id;
  final String? name;
  final String? description;
  final int? price;

  OrderProducts({
    required this.id,
    this.name,
    this.description,
    this.price,
  });

  factory OrderProducts.fromJson(Map<String, dynamic> json) =>
      _$OrderProductsFromJson(json);

  Map<String, dynamic> toJson() => _$OrderProductsToJson(this);
}

@JsonSerializable()
class Orders {
  final int id;
  @JsonKey(name: 'total_price')
  final String? totalPrice;
  @JsonKey(name: 'shipping_address')
  final String shippingAddress;
  final String status;

  Orders({
    required this.id,
    this.totalPrice,
    required this.shippingAddress,
    required this.status,
  });

  factory Orders.fromJson(Map<String, dynamic> json) => _$OrdersFromJson(json);

  Map<String, dynamic> toJson() => _$OrdersToJson(this);
}
