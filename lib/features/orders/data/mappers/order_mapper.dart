import 'package:ecommerce/features/orders/data/models/orders_model/orders_model.dart';
import 'package:ecommerce/features/orders/domain/entities/order.dart';

extension OrdersMapper on OrdersModel {
  Order get fromModel {
    return const Order(
        id: 1,
        customerId: 5,
        address: 'address',
        products: [],
        totalPrice: '250',
        orderStatus: 'Pending');
  }
}
