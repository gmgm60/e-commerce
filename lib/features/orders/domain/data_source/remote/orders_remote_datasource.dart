import 'package:ecommerce/features/orders/data/models/orders_model/orders_model.dart';

abstract class OrdersRemoteDatasource {
  Future<List<OrdersModel>> getOrders();
}
