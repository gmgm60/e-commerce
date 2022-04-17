import 'package:ecommerce/features/orders/data/models/orders_model/orders_model.dart';
import 'package:ecommerce/features/orders/domain/entities/order.dart';
import 'package:ecommerce/features/products/data/models/product_model/product_mapper.dart';

extension OrdersMapper on OrderModelData {
  Order get fromModel {
    final productEntities =
        products.map((productModel) => productModel.toDomain()).toList();
    return Order(
      id: id,
      customerId: customerId,
      address: address,
      products: productEntities,
      totalPrice: totalPrice,
      orderStatus: status
    );
  }
}
