import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_model.g.dart';

@JsonSerializable()
class OrdersModel {
  final List<OrderData> data;

  final String message;

  OrdersModel({required this.data, required this.message});

  factory OrdersModel.fromJson(Map<String, dynamic> json) =>
      _$OrdersModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrdersModelToJson(this);
}

@JsonSerializable()
class OrderData {
  OrderData();

  factory OrderData.fromJson(Map<String, dynamic> json) =>
      _$OrderDataFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDataToJson(this);
}
