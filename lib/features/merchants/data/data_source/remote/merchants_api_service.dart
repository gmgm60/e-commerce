import 'package:dio/dio.dart';
import 'package:ecommerce/core/constants/constants.dart';
import 'package:ecommerce/features/merchants/data/models/merchant_model/merchants_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'merchants_api_service.g.dart';

@singleton
@RestApi(baseUrl: 'https://my.api.mockaroo.com')
abstract class MerchantsApiService {
  @factoryMethod
  factory MerchantsApiService(Dio dio) = _MerchantsApiService;

  @GET('/merchants?key=ec0ea640')
  Future<List<MerchantData>> getMerchants(
      {@Header(authorizationHeader) required String token});
}
