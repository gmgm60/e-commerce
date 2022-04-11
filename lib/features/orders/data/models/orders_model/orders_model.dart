import 'package:ecommerce/features/products/data/models/product_model/product_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'orders_model.g.dart';

@JsonSerializable()
class OrdersModel {
  @JsonKey(name: 'order')
  OrderModelData order;
  @JsonKey(name: 'token')
  String token;

  OrdersModel({
    required this.order,
    required this.token,
  });

  factory OrdersModel.fromJson(Map<String, dynamic> json) =>
      _$OrdersModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrdersModelToJson(this);
}

@JsonSerializable()
class OrderModelData {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'customer_id')
  int customerId;

  @JsonKey(name: 'address')
  String address;

  @JsonKey(name: 'products')
  List<ProductModel> products;

  OrderModelData({
    required this.id,
    required this.customerId,
    required this.address,
    required this.products,
  });

  factory OrderModelData.fromJson(Map<String, dynamic> json) =>
      _$OrderModelDataFromJson(json);

  Map<String, dynamic> toJson() => _$OrderModelDataToJson(this);
}
