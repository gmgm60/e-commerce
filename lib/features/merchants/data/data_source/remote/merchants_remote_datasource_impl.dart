import 'package:ecommerce/core/data/throw_app_exception.dart';
import 'package:ecommerce/features/merchants/data/data_source/remote/merchants_api_service.dart';
import 'package:ecommerce/features/merchants/data/models/merchant_details/merchant_details_model.dart';
import 'package:ecommerce/features/merchants/data/models/merchant_model/merchants_model.dart';
import 'package:ecommerce/features/merchants/domain/data_source/remote/merchants_remote_datasource.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: MerchantsRemoteDatasource)
class MerchantsRemoteDatasourceImpl extends MerchantsRemoteDatasource {
  final MerchantsApiService _merchantsApiService;

  MerchantsRemoteDatasourceImpl(this._merchantsApiService);

  @override
  Future<MerchantModel> getMerchants() async {
    try {
      return await _merchantsApiService.getMerchants();
    } catch (e) {
      throw throwAppException(e);
    }
  }

  @override
  Future<MerchantDetailsModel> getMerchantDetails({required int merchantId}) async{
    try {
      return await _merchantsApiService.getMerchantDetails(merchantId: merchantId);
    } catch (e) {
      throw throwAppException(e);
    }
  }
}
