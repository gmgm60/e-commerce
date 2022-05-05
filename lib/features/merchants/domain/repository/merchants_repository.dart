import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/features/merchants/domain/entities/merchant.dart';
import 'package:ecommerce/features/merchants/domain/entities/merchant_details.dart';

abstract class MerchantsRepository {
  Future<Either<AppFailure, List<Merchant>>> getMerchants();

  Future<Either<AppFailure, MerchantDetails>> getMerchantDetails(
      {required int merchantId});
}
