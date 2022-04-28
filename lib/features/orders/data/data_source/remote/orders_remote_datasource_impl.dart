import 'package:ecommerce/core/data/throw_app_exception.dart';
import 'package:ecommerce/features/orders/data/data_source/remote/orders_api_service.dart';
import 'package:ecommerce/features/orders/data/models/orders_model/orders_model.dart';
import 'package:ecommerce/features/orders/domain/data_source/remote/orders_remote_datasource.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: OrdersRemoteDatasource)
class OrdersRemoteDatasourceImpl extends OrdersRemoteDatasource {
  final OrdersApiService _ordersApiService;

  OrdersRemoteDatasourceImpl(this._ordersApiService);

  @override
  Future<List<OrdersModel>> getOrders() async {
    try {
      return await _ordersApiService.getOrders();
    } catch (e) {
      throw throwAppException(e);
    }
  }
}
