import 'package:dio/dio.dart';
import 'package:ecommerce/features/merchants/data/models/merchant_model/merchants_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'merchants_api_service.g.dart';

@singleton
@RestApi(baseUrl: 'https://api.mockaroo.com/api/')
abstract class MerchantsApiService {
  @factoryMethod
  factory MerchantsApiService(Dio dio) = _MerchantsApiService;

  @GET('e1776500')
  Future<List<MerchantData>> getMerchants(
      //{@Header(authorizationHeader) required String token}
      {@Query('count') required int count,
      @Query('key') required String key});
}
