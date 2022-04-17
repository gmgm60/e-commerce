import 'package:ecommerce/features/merchants/data/models/merchant_model/merchants_model.dart';

abstract class MerchantsApiService {
  Future<List<MerchantData>> getMerchants({required String token});
}
