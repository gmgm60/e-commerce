
import 'package:ecommerce/features/products/data/models/product_model/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_model.g.dart';

@JsonSerializable()
class OrdersModel {
  @JsonKey(name: 'order_id')
  int orderId;
  @JsonKey(name: 'customer_id')
  int customerId;
  String address;
  List<ProductModel> products;
  @JsonKey(name: 'total_price')
  String totalPrice;
  String status;

  OrdersModel({
      required this.orderId,
      required this.customerId,
      required this.address,
      required this.products,
      required this.totalPrice,
      required this.status,});

  factory OrdersModel.fromJson(Map<String, dynamic> json) =>
      _$OrdersModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrdersModelToJson(this);

}
