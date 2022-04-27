import 'package:dio/dio.dart';
import 'package:ecommerce/features/merchants/data/models/merchant_model/merchants_model.dart';
import 'package:ecommerce/features/merchants/domain/data_source/remote/merchants_api_service.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'merchants_api_service_impl.g.dart';

@Singleton(as: MerchantsApiService)
@RestApi(baseUrl: 'https://my.api.mockaroo.com')
abstract class MerchantsApiServiceImpl implements MerchantsApiService {
  @factoryMethod
  factory MerchantsApiServiceImpl(Dio dio) = _MerchantsApiServiceImpl;

  @override
  @GET('/merchants?key=ec0ea640')
  Future<List<MerchantData>> getMerchants();
}
