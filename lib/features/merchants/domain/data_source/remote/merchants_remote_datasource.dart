import 'package:ecommerce/features/merchants/data/models/merchant_details/merchant_details_model.dart';
import 'package:ecommerce/features/merchants/data/models/merchant_model/merchants_model.dart';

abstract class MerchantsRemoteDatasource {
  Future<MerchantModel> getMerchants();

  Future<MerchantDetailsModel> getMerchantDetails({required int merchantId});
}
