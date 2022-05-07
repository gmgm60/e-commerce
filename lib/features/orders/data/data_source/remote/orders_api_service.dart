import 'package:dio/dio.dart';
import 'package:ecommerce/core/constants/constants.dart';
import 'package:ecommerce/features/orders/data/models/orders_model/orders_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'orders_api_service.g.dart';

@singleton
@RestApi(baseUrl: baseUrl)
abstract class OrdersApiService {
  @factoryMethod
  factory OrdersApiService(Dio dio) = _OrdersApiService;

  @GET(ordersEndPoint)
  Future<OrdersModel> getOrders();
}
