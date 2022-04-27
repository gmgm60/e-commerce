import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';
import 'package:ecommerce/features/merchants/domain/entities/merchant.dart';

abstract class MerchantsRepository {
  Future<Either<AppFailure, List<Merchant>>> getMerchants();
}
