import 'package:ecommerce/features/orders/data/models/orders_model/orders_model.dart';

abstract class OrdersApiService {
  Future<List<OrdersModel>> getOrders();
}
