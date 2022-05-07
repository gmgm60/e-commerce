import 'package:ecommerce/features/orders/data/models/orders_model/orders_model.dart';
import 'package:ecommerce/features/orders/domain/entities/order.dart';

extension OrdersMapper on OrderData {
  Order get fromModel {
    return Order(
        id: orderId,
        address: orders.shippingAddress,
        // we expect list here!!
        products: products.name ?? '',
        totalPrice: '$totalPrice',
        orderStatus: orders.status);
  }
}
