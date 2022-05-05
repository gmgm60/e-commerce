import 'package:dio/dio.dart';
import 'package:ecommerce/core/constants/constants.dart';
import 'package:ecommerce/features/merchants/data/models/merchant_details/merchant_details_model.dart';
import 'package:ecommerce/features/merchants/data/models/merchant_model/merchants_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'merchants_api_service.g.dart';

@singleton
@RestApi(baseUrl: baseUrl)
abstract class MerchantsApiService {
  @factoryMethod
  factory MerchantsApiService(Dio dio) = _MerchantsApiService;

  @GET(merchantsEndPoint)
  Future<MerchantModel> getMerchants();

  @GET('$merchantProductsEndPoint/{merchantId}')
  Future<MerchantDetailsModel> getMerchantDetails(
      {@Path() required int merchantId});
}
