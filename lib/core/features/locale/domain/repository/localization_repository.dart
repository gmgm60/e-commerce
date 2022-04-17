import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/failure/failure.dart';

abstract class LocalizationRepository {
  Future<Either<Failure, String>> getLocaleCode();

  Future<Either<Failure, bool>> changeLocaleCode({required String localeCode});
}
