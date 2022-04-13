import 'package:dio/dio.dart';
import 'package:ecommerce/core/constants/constants.dart';
import 'package:ecommerce/features/orders/data/models/orders_model/orders_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'orders_api_service.g.dart';

@singleton
@RestApi(baseUrl: 'https://api.mockaroo.com/api/a109e990?count=100&key=ec0ea640')
abstract class OrdersApiService {
  @factoryMethod
  factory OrdersApiService(Dio dio) = _OrdersApiService;

  @GET('')
  Future<OrdersModel> getOrders({
    @Header(authorizationHeader) required String token,
  });
}
