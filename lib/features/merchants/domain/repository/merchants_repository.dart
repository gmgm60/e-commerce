import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/error/app_failure.dart';
import 'package:ecommerce/features/merchants/domain/entities/merchant.dart';

abstract class MerchantsRepository {
  Future<Either<Failures, List<Merchant>>> getMerchants();
}
