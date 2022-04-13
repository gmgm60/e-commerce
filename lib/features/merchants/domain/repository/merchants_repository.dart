import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/failure/failure.dart';
import 'package:ecommerce/features/merchants/domain/entities/merchant.dart';

abstract class MerchantsRepository {
  Future<Either<Failure, List<Merchant>>> getMerchants();
}
