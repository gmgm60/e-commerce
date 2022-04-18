import 'package:dio/dio.dart';
import 'package:ecommerce/core/constants/constants.dart';
import 'package:ecommerce/features/orders/data/models/orders_model/orders_model.dart';
import 'package:ecommerce/features/orders/domain/data_source/remote/orders_api_service.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'orders_api_service_impl.g.dart';

@Singleton(as: OrdersApiService)
@RestApi(baseUrl: 'https://my.api.mockaroo.com')
abstract class OrdersApiServiceImpl implements OrdersApiService {
  @factoryMethod
  factory OrdersApiServiceImpl(Dio dio) = _OrdersApiServiceImpl;

  @override
  @GET('/orders.json?key=ec0ea640')
  Future<List<OrdersModel>> getOrders({
    @Header(authorizationHeader) required String token,
  });
}
