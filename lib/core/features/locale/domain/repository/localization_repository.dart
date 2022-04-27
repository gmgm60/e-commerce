import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/domain/failures/app_failure.dart';

abstract class LocalizationRepository {
  Future<Either<AppFailure, String?>> getLocaleCode();

  Future<Either<AppFailure, bool>> changeLocaleCode(
      {required String localeCode});
}
