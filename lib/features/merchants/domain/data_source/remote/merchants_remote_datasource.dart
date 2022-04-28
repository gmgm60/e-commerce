import 'package:ecommerce/features/merchants/data/models/merchant_model/merchants_model.dart';

abstract class MerchantsRemoteDatasource {
  Future<List<MerchantData>> getMerchants();
}
